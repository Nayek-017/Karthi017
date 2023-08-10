package placementtrianing.com;

import java.util.Scanner;

public class ToClimbStaircase {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int arr[] = new int[n];
        if(n==1 || n==2){
            System.out.println(n);
            return;
        }
        arr[0] = 1;
        arr[1] = 2;
        for(int i=2; i<n; i++){
            arr[i] = arr[i-1] + arr[i-2];

        }
        System.out.println(arr[arr.length-1]);
    }
}
