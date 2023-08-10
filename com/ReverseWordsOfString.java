package placementtrianing.com;

import java.util.Scanner;

public class ReverseWordsOfString {
    public static void main(String[] args) {
//        Scanner sc = new Scanner(System.in);
//        String str = sc.next();
        System.out.println(reverseWords("I am a heartiology doctor"));
    }
    static String reverseWords(String s){
        String[] words = s.split(" +");
        StringBuilder sb = new StringBuilder();
        for(int i=words.length-1; i>=0; i--){
            sb.append(words[i]);
            sb.append(" ");
        }
        return sb.toString().trim();
    }
}
