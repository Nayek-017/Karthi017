package placementtrianing.com;

import java.util.Scanner;

public class MonotonicOrNot {
    static boolean isMonotonic(int[] arr) {
        boolean dec = true;
        boolean inc = true;
        for (int i = 1; i < arr.length; i++) {
            if (arr[i] > arr[i - 1]) {
                dec = false;
            } else if (arr[i] < arr[i - 1]) {
                inc = false;
            }
        }
        return inc || dec;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int[] arr = new int[n];
        for(int i=0; i<n; i++){
            arr[i] = sc.nextInt();
        }
        if(isMonotonic(arr)){
            System.out.println("Montonic");
        }else{
            System.out.println("Not Monotonic");
        }
    }
}
