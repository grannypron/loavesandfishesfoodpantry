
public class Swappo {

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		int[] arr = {1,2};
	
		System.out.print(arr[0]);
		System.out.println(arr[1]);
		arr[0] = s2(arr, arr[0], arr[1]);
		
		System.out.print(arr[0]);
		System.out.println(arr[1]);
	}
	
	
	static int s2(int[] arr, int b, int c) {
		
		arr[1] = b;
		return 	c;
	}
}
