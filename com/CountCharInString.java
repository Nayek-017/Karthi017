package placementtrianing.com;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class CountCharInString {
    public static void main(String[] args) throws IOException {

        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String input  = br.readLine();
        int flag=0,count=0;
        for(int i=0; i<input.length(); i++){
               flag=0;
            for(int j=i+1; j<input.length(); j++){
                if(input.charAt(i) == input.charAt(j)) {
                    flag = 1;
                    break;
                }

            }
            if(flag==0)
                count++;
        }
        System.out.println(count);
    }
}
