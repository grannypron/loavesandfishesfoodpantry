package org.steeley;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGEncodeParam;
import com.sun.image.codec.jpeg.JPEGImageEncoder;
import java.awt.*;
import java.awt.event.*;
import java.beans.*;
import com.topaz.sigplus.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.comm.*;
import javax.swing.JOptionPane;

public class SigPlusFrame extends Frame implements Runnable {

    SigPlus sigObj = null;
    Thread eventThread;
    String outputFilename = "";
    
    
    final int EMPTY_IMAGE_SIZE = 1027;

    public static void main(String Args[]) {
        SigPlusFrame demo = new SigPlusFrame();
        demo.setSize(400, 150);
        demo.setResizable(false);
        demo.setVisible(true);
        demo.setBackground(Color.lightGray);
        demo.setFilename("C:\\Users\\Andy\\Desktop\\andy.sig");
        try {
            while (demo.isVisible()) {Thread.sleep(100);}
            demo.dispose();
        } catch (InterruptedException ie) {
        }
    }

    public void setFilename(String filename) {
        outputFilename = filename;
    }

    public String getFilename() {
        return outputFilename;
    }

    public SigPlusFrame() {
        GridBagLayout gbl = new GridBagLayout();
        GridBagConstraints gc = new GridBagConstraints();
        setLayout(gbl);
        Panel controlPanel = new Panel();
        setConstraints(controlPanel, gbl, gc, 0, 0,
                GridBagConstraints.REMAINDER, 1, 0, 0,
                GridBagConstraints.CENTER,
                GridBagConstraints.NONE, 0, 0, 0, 0);
        add(controlPanel, gc);


        //controlPanel.add(connectionChoice);
        //controlPanel.add(connectionTablet);
        /*

        Button startButton = new Button("START");
        controlPanel.add(startButton);

        Button stopButton = new Button("STOP");
        controlPanel.add(stopButton);

        Button clearButton = new Button("CLEAR");
        controlPanel.add(clearButton);

        Button loadSigButton = new Button("LOAD SIG");
        controlPanel.add(loadSigButton);

        controlPanel.add(txtPath);
         */
        Button okButton = new Button("OK");
        controlPanel.add(okButton);

        Button cancelButton = new Button("CANCEL");
        controlPanel.add(cancelButton);

        initConnection();


        String drivername = "com.sun.comm.Win32Driver";
        try {
            CommDriver driver = (CommDriver) Class.forName(drivername).newInstance();
            driver.initialize();
        } catch (Throwable th) {
            /* Discard it */
        }

        try {
            ClassLoader cl = (com.topaz.sigplus.SigPlus.class).getClassLoader();
            sigObj = (SigPlus) Beans.instantiate(cl, "com.topaz.sigplus.SigPlus");

            sigObj.setTabletComPort("HSB");
            sigObj.setTabletComPort("HID1"); //properly set up HSB tablet

            setConstraints(sigObj, gbl, gc, 0, 1,
                    GridBagConstraints.REMAINDER, 1, 1, 1,
                    GridBagConstraints.CENTER,
                    GridBagConstraints.BOTH, 5, 0, 5, 0);
            add(sigObj, gc);
            sigObj.setImagePenWidth(2);
            sigObj.setSize(100, 100);
            sigObj.clearTablet();
            sigObj.setTabletState(0);
            sigObj.setTabletState(1);
            setTitle("Enter Signature - Press OK when complete");

            cancelButton.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent e) {
                    sigObj.setTabletState(0);
                    closeFrame(e);
                }
            });
/*
            startButton.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent e) {
                    sigObj.setTabletState(0);
                    sigObj.setTabletState(1);
                    closeFrame(e);
                }
            });

            stopButton.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent e) {
                    sigObj.setTabletState(0);
                    closeFrame(e);
                }
            });

            clearButton.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent e){
            sigObj.clearTablet();
            }
            });
             */
            okButton.addActionListener(new ActionListener() {

                public void actionPerformed(ActionEvent e) {
                    boolean blnExport = false;
                    String path = txtPath.getText();
                    int pathlength = path.length();
                    if (pathlength != 0) {
                        sigObj.autoKeyStart();
                        sigObj.setAutoKeyData("Sample Encryption Data");
                        sigObj.autoKeyFinish();
                        sigObj.setEncryptionMode(1);
                        try {
                            saveJPEG(outputFilename);
                            outputFilename = "";
                        } catch (IOException exc) {

                            StringWriter sw = new StringWriter();
                            exc.printStackTrace(new PrintWriter(sw));
                            String err = "Signature Failed: " + exc.getMessage() + "\n" + sw.toString();

                            outputFilename = "";

                            JOptionPane.showMessageDialog(SigPlusFrame.this, err,
				                       "Signature Error", JOptionPane.ERROR_MESSAGE);
                            
                        }
                    } else {
                        System.out.println("Please type in full path information to save file");
                    }
                    closeFrame(e);
                }
            });

            /*
            loadSigButton.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent e){
            boolean blnImport=false;
            String path=txtPath.getText();
            int pathlength=path.length();
            if(pathlength!=0)
            {
            sigObj.autoKeyStart();
            sigObj.setAutoKeyData("Sample Encryption Data");
            sigObj.autoKeyFinish();
            sigObj.setEncryptionMode(1);
            blnImport = sigObj.importSigFile(txtPath.getText());
            if (blnImport==false)
            {
            System.out.println("Error reading SIG file");
            }
            }
            else
            {
            System.out.println("Please type in full path information to load file");
            }
            }
            });


            //txtPath.addTextListener(new TextListener(){
            //public void textValueChanged(TextEvent e){
            //System.out.println(txtPath.getText());
            //}
            //});


            connectionTablet.addItemListener(new ItemListener() {

                public void itemStateChanged(ItemEvent e) {

                    if (connectionTablet.getSelectedItem() != "SignatureGemLCD4X3") {
                        sigObj.setTabletModel(connectionTablet.getSelectedItem());
                    } else {
                        sigObj.setTabletModel("SignatureGemLCD4X3New"); //properly set up LCD4X3
                    }

                }
            });


            connectionChoice.addItemListener(new ItemListener() {

                public void itemStateChanged(ItemEvent e) {

                    if (connectionChoice.getSelectedItem() != "HSB") {
                        sigObj.setTabletComPort(connectionChoice.getSelectedItem());
                    } else {
                        sigObj.setTabletComPort("HID1"); //properly set up HSB tablet
                    }

                }
            });
             */


            addWindowListener(new WindowAdapter() {

                public void windowClosing(WindowEvent we) {
                    sigObj.setTabletState(0);
                    ((Window) we.getSource()).setVisible(false);
                }


                public void windowClosed(WindowEvent we) {
                    sigObj.setTabletState(0);
                    ((Window) we.getSource()).setVisible(false);
                }
            });

            sigObj.addSigPlusListener(new SigPlusListener() {

                public void handleTabletTimerEvent(SigPlusEvent0 evt) {
                }

                public void handleNewTabletData(SigPlusEvent0 evt) {
                }

                public void handleKeyPadData(SigPlusEvent0 evt) {
                }
            });


            show();

            sigObj.setTabletModel("SignatureGem1X5");
            sigObj.setTabletComPort("COM1");


            eventThread = new Thread(this);
            eventThread.start();

        } catch (Exception e) {
            return;
        }

    }

    private void saveJPEG(String filename) throws IOException {
        sigObj.setTabletState(0);
        sigObj.setImageJustifyMode(5);
        sigObj.setImageXSize(400);
        sigObj.setImageYSize(52);
        BufferedImage bufferedImage = sigObj.sigImage();

        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        JPEGImageEncoder jpeg = JPEGCodec.createJPEGEncoder(bos);
        JPEGEncodeParam qualityParam = jpeg.getDefaultJPEGEncodeParam(bufferedImage);
        qualityParam.setQuality(.5f, true);
        jpeg.setJPEGEncodeParam(qualityParam); 
        jpeg.encode(bufferedImage);
        
        if (bos.size() == EMPTY_IMAGE_SIZE) {
          throw new IOException("Empty Signature Detected.  Signature may not have saved.  \n" +
          "Ensure that the signature pad is plugged in and please retry.");
        } 
        FileOutputStream fos = new FileOutputStream(new File(filename));
        fos.write(bos.toByteArray());
        fos.close();
    }

    private void closeFrame(ActionEvent e) {
        sigObj.setTabletState(0);
        ((Frame) ((Panel) ((Button) e.getSource()).getParent()).getParent()).hide();
    }

    public void run() {
        try {
            while (isVisible()) {
                Thread.sleep(100);
            }
        } catch (InterruptedException e) {
        }
    }
    TextField txtPath = new TextField("C:\\test.sig", 30);
    Choice connectionChoice = new Choice();
    protected String[] connections = {
        "COM1",
        "COM2",
        "COM3",
        "COM4",
        "USB",
        "HSB",};
    Choice connectionTablet = new Choice();
    protected String[] tablets = {
        "SignatureGem1X5",
        "SignatureGem4X5",
        "SignatureGemLCD",
        "SignatureGemLCD4X3",
        "ClipGem",
        "ClipGemLGL",};

    private void initConnection() {
        for (int i = 0; i < connections.length; i++) {
            connectionChoice.add(connections[i]);
        }

        for (int i = 0; i < tablets.length; i++) {
            connectionTablet.add(tablets[i]);
        }

    }

    //Convenience method for GridBagLayout
    private void setConstraints(
            Component comp,
            GridBagLayout gbl,
            GridBagConstraints gc,
            int gridx,
            int gridy,
            int gridwidth,
            int gridheight,
            int weightx,
            int weighty,
            int anchor,
            int fill,
            int top,
            int left,
            int bottom,
            int right) {
        gc.gridx = gridx;
        gc.gridy = gridy;
        gc.gridwidth = gridwidth;
        gc.gridheight = gridheight;
        gc.weightx = weightx;
        gc.weighty = weighty;
        gc.anchor = anchor;
        gc.fill = fill;
        gc.insets = new Insets(top, left, bottom, right);
        gbl.setConstraints(comp, gc);
    }
}

