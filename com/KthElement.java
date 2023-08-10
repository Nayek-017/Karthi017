package placementtrianing.com;

import java.util.Arrays;

public class KthElement {
    static void k_largest_and_smallest(int[] a,int k){
        Arrays.sort(a);
        int n = a.length;
        System.out.println("Kth Largest is " +a[n-k]);
        System.out.println("Kth Smallest is " +a[k-1]);
    }
    public static void main(String[] args) {
        int a[] = {32,4,65,78,3,21,68,1};
        k_largest_and_smallest(a,6);

    }
}
