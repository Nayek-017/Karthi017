package placementtrianing.com;

import java.util.*;

public class SearchCharInString {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String str = sc.nextLine();
        char charToCheck =sc.next().charAt(0);

        boolean charFound = false;
        for(int i=0; i<str.length(); i++){
            if(str.charAt(i) == charToCheck){
                charFound = true;
                break;
            }
        }
        if(charFound){
            System.out.println("Present");
        }else{
            System.out.println("Not Present");
        }

    }
}
