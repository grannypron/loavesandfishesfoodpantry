package org.steeley;

import com.sun.star.frame.XDesktop;
import com.sun.star.lang.XMultiComponentFactory;
import com.sun.star.uno.UnoRuntime;
import com.sun.star.uno.XComponentContext;
import com.sun.star.lib.uno.helper.Factory;
import com.sun.star.lang.XSingleComponentFactory;
import com.sun.star.registry.XRegistryKey;
import com.sun.star.lib.uno.helper.WeakBase;
import java.awt.Color;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;

public final class SigLiteOOPlugin extends WeakBase
        implements com.sun.star.lang.XServiceInfo,
        com.sun.star.frame.XDispatchProvider,
        com.sun.star.lang.XInitialization,
        com.sun.star.frame.XDispatch, com.sun.star.task.XJobExecutor {

    private final XComponentContext m_xContext;
    private com.sun.star.frame.XFrame m_xFrame;
    private static final String m_implementationName = SigLiteOOPlugin.class.getName();
    private static final String[] m_serviceNames = {
        "com.sun.star.frame.ProtocolHandler"};

    public SigLiteOOPlugin(XComponentContext context) {
        m_xContext = context;
    }
    ;

    public static XSingleComponentFactory __getComponentFactory(String sImplementationName) {
        XSingleComponentFactory xFactory = null;

        if (sImplementationName.equals(m_implementationName)) {
            xFactory = Factory.createComponentFactory(SigLiteOOPlugin.class, m_serviceNames);
        }
        return xFactory;
    }

    public static boolean __writeRegistryServiceInfo(XRegistryKey xRegistryKey) {
        return Factory.writeRegistryServiceInfo(m_implementationName,
                m_serviceNames,
                xRegistryKey);
    }

    // com.sun.star.lang.XServiceInfo:
    public String getImplementationName() {
        return m_implementationName;
    }

    public boolean supportsService(String sService) {
        int len = m_serviceNames.length;

        for (int i = 0; i < len; i++) {
            if (sService.equals(m_serviceNames[i])) {
                return true;
            }
        }
        return false;
    }

    public String[] getSupportedServiceNames() {
        return m_serviceNames;
    }

    // com.sun.star.frame.XDispatchProvider:
    public com.sun.star.frame.XDispatch queryDispatch(com.sun.star.util.URL aURL,
            String sTargetFrameName,
            int iSearchFlags) {
        if (aURL.Protocol.compareTo("org.steeley.sigliteooplugin:") == 0) {
            if (aURL.Path.compareTo("InsertSignature") == 0) {
                return this;
            }
        }
        return null;
    }

    // com.sun.star.frame.XDispatchProvider:
    public com.sun.star.frame.XDispatch[] queryDispatches(
            com.sun.star.frame.DispatchDescriptor[] seqDescriptors) {
        int nCount = seqDescriptors.length;
        com.sun.star.frame.XDispatch[] seqDispatcher =
                new com.sun.star.frame.XDispatch[seqDescriptors.length];

        for (int i = 0; i < nCount; ++i) {
            seqDispatcher[i] = queryDispatch(seqDescriptors[i].FeatureURL,
                    seqDescriptors[i].FrameName,
                    seqDescriptors[i].SearchFlags);
        }
        return seqDispatcher;
    }

    // com.sun.star.lang.XInitialization:
    public void initialize(Object[] object)
            throws com.sun.star.uno.Exception {
        if (object.length > 0) {
            m_xFrame = (com.sun.star.frame.XFrame) UnoRuntime.queryInterface(
                    com.sun.star.frame.XFrame.class, object[0]);
        }
    }

    // com.sun.star.frame.XDispatch:
    public void dispatch(com.sun.star.util.URL aURL,
            com.sun.star.beans.PropertyValue[] aArguments) {
        if (aURL.Protocol.compareTo("org.steeley.sigliteooplugin:") == 0) {
            if (aURL.Path.compareTo("InsertSignature") == 0) {
                // add your own code here
                return;
            }
        }
    }

    public void addStatusListener(com.sun.star.frame.XStatusListener xControl,
            com.sun.star.util.URL aURL) {
        // add your own code here
    }

    public void removeStatusListener(com.sun.star.frame.XStatusListener xControl,
            com.sun.star.util.URL aURL) {
        // add your own code here
    }

    /** method for creating a dialog at runtime
     */
    public void trigger(String url) {
        SigPlusFrame demo = new SigPlusFrame();
        demo.setSize(400, 150);
        demo.setResizable(false);
        demo.setVisible(true);
        demo.setBackground(Color.lightGray);
        demo.setFilename(url);
        try {
            while (demo.isVisible()) {Thread.sleep(100);}
            refocusOnFormWindow();
            demo.dispose();
        } catch (InterruptedException ie) {
          
        }
    }


    private boolean refocusOnFormWindow() {
        XMultiComponentFactory xmcf = m_xContext.getServiceManager();
        Object desktop;
        try {
            //Try to refocus on the form
            //FileOutputStream fos = new FileOutputStream(new File("c:\\Users\\Andy\\Desktop\\success.txt"));
            desktop = xmcf.createInstanceWithContext("com.sun.star.frame.Desktop", m_xContext);
            XDesktop xDesktop = (XDesktop) UnoRuntime.queryInterface(XDesktop.class, desktop);
            //fos.write(("name: " + xDesktop.getCurrentFrame().getName()).getBytes());
            //fos.write(("\r\nisTop: " + xDesktop.getCurrentFrame().isTop()).getBytes());
            //fos.write(("\r\nisActive: " + xDesktop.getCurrentFrame().isActive()).getBytes());
            xDesktop.getCurrentFrame().getContainerWindow().setVisible(false);
            xDesktop.getCurrentFrame().getContainerWindow().setVisible(true);
            xDesktop.getCurrentFrame().getController().getFrame().activate();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
}
