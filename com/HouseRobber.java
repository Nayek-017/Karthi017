package placementtrianing.com;

import static java.lang.Math.max;

public class HouseRobber {
    public static void main(String[] args) {
        int[] arr = {2,7,9,3,1,9};
        int[] hr = new int[arr.length];
        hr[0] = arr[0];
        hr[1] = max(arr[0],arr[1]);
        for(int i=2; i< arr.length; i++){
            hr[i] = max(arr[i]+hr[i-2],hr[i-1]);
        }
        System.out.println(hr[hr.length-1]);
    }
}
