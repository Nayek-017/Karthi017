package placementtrianing.com;

import java.util.Scanner;

public class SearchElementInArray {
    public static void main(String[] args) {
        int flag=0,x;
//        int arr[] = new int[10];
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int arr[] = new int[n];
        int i;
        for (i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }
        x = sc.nextInt();
        for( i=0; i<n; i++) {
            if (arr[i] == x) {
                flag = 1;
                break;
            } else {
                flag = 0;
            }
        }
        if(flag == 1){
            System.out.println("Element found");
        }
        else {
            System.out.println("element Not found");
        }
    }
}
