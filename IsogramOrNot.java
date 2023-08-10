import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static boolean iso(String str) {
        str = str.toLowerCase();
        char a[] = str.toCharArray();
        Arrays.sort(a);
        for (int i = 0; i<a.length-1; i++) {
            if (a[i] == a[i+1])
                return false;
        }
        return true;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String str = sc.next();
        boolean res = iso(str);
        if(res==true){
            System.out.println("Isogram");
        }
        else {
            System.out.println("Not Isogram");
        }
    }
}