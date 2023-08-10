package placementtrianing.com;

import java.util.Arrays;
import java.util.Scanner;

public class RotateArrayToRight {
    public static void main(String[] args){
        int[] arr = new int[8];
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        for(int i=0; i<n; i++){
            arr[i] = sc.nextInt();
        }
        int no = sc.nextInt();
        for(int i=0; i<no; i++) {
            int x = arr[arr.length - 1];
            for (int j = arr.length - 1; j > 0; j--) {
                arr[j] = arr[j - 1];
            }
            arr[0] = x;
        }
        System.out.print(Arrays.toString(arr));
    }
}
