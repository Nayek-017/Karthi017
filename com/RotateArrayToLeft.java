package placementtrianing.com;

import java.util.Scanner;

public class RotateArrayToLeft {
    public static void main(String[] args) {
        int arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i] + " ");
        }
        Scanner sc = new Scanner(System.in);
        int no = sc.nextInt();

        for (int i = 0; i < no; i++) {

            int first = arr[0];
            for (int j = 0; j < arr.length - 1; j++) {
                arr[j] = arr[j + 1];
            }
            arr[arr.length - 1] = first;
        }
//            System.out.println();
            for ( int i = 0; i < arr.length; i++) {
                System.out.print(arr[i] + " ");
            }
        }
    }
