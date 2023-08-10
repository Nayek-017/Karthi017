package placementtrianing.com;

public class LongestCommonSubstring {
    public static void main(String[] args) {
        String str1 = "HelloWorld";
        String str2 = "HellWor";
        int n = str1.length();
        int p = str2.length();
        int[][] arr = new int[n][p];
        int max=0,pos=0;
        for(int i=0; i<n; i++){
            for(int j=0; j<p; j++){
                if(str1.charAt(i) == str2.charAt(j)){
                    if(i==0 || j==0){
                        arr[i][j] = 1;
                    }else{
                        arr[i][j] =arr[i-1][j-1]+1;
                        if(arr[i][j]>max){
                            max = arr[i][j];
                            pos = j+1;
                        }
                    }
                }
            }
        }
        System.out.println(str2.substring(pos-max,pos));
    }
}
