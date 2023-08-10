import java.util.Scanner;

public class Main {
    static void delete(int arr[], int n, int pos) {
        for (int i = pos; i < n - 1; i++) {
            arr[i] = arr[i + 1];
        }
    }

    public static void main(String[] args) {
        int[] arr = new int[10];
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }
        int pos = 3;
        delete(arr, n, pos);
        for (int i = 0; i < n - 1; i++) {
            System.out.print(arr[i] + " ");
        }

    // unique element
//    public static void main(String[] args){
//        int[] arr = new int [10];
//        Scanner sc = new Scanner(System.in);
//        int n = sc.nextInt();
//        for(int i=0; i<n; i++){
//            arr[i] = sc.nextInt();
//        }
//        for(int i=0; i< arr.length; i++) {
//            int j;
//            for (j = 0; j < arr.length; j++) {
//                if (i == j) {
//                    continue;
//                }
//                if (arr[i] == arr[j]) {
//                    break;
//                }
//            }
//            if(j==arr.length){
//                System.out.print(arr[i]+" ");
//            }
//        }
//        System.out.print(arr[arr.length-1]);
    }
}