package placementtrianing.com;

import java.util.HashMap;
import java.util.Scanner;

public class RomanToInt {
    public static void main(String[] args) {
        HashMap<Character,Integer> map = new HashMap<>();
        map.put('I',1);
        map.put('V',5);
        map.put('X',10);
        map.put('L',50);
        map.put('C',100);
        map.put('D',500);
        map.put('M',1000);
        Scanner sc = new Scanner(System.in);
        String inp = sc.nextLine();
        int len = inp.length();
        int sum =0;
        for (int i=len-1; i>=0; i--){
            int num = map.get(inp.charAt(i));
            if(num*4 > sum){
                sum = sum + num;
            }else {
                sum = sum - num;
            }
        }
        System.out.println(sum);
    }
}
