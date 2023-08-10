package placementtrianing.com;

import java.util.Arrays;
import java.util.Scanner;

public class AnagramOrNot {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String s1 = sc.next();
        String s2 = sc.next();
        char c1[] = s1.toCharArray();
        char c2[] = s2.toCharArray();
        if(c1.length != c2.length){
            System.out.println(s1+" "+s2+ " are not anagram");
            System.exit(0);
        }
        Arrays.sort(c1);
        Arrays.sort(c2);
        for(int i=0; i<c1.length; i++){
            if(c1[i] != c2[i]){
                System.out.println(s1+" "+s2+ " are not anagram");
                System.exit(0);
            }
        }
        System.out.println(s1+" "+s2+ " are anagram");
    }
}
