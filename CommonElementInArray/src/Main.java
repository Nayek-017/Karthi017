

public class Main {
    public static void findCommonElement(int[] a1,int[] a2,int[] a3) {
        int i=0,j=0,k=0;
        int n1= a1.length;
        int n2= a2.length;
        int n3= a3.length;
        while (i < n1 && j < n2 &&  k <n3) {
            if (a1[i] == a2[j] && a1[j] == a3[k]) {
                System.out.print(a1[i]);
                i++;
                j++;
                k++;
            } else if (a1[i] < a2[j]) {
                i++;
            } else if (a2[j] < a3[k]) {
                j++;
            } else{
                k++;
            }
        }
    }

    public static void main(String[] args) {
        int a1[] = {1,2,3,4,5};
        int a2[] = {2,8};
        int a3[] = {3,4,2};
        findCommonElement(a1,a2,a3);
    }
}