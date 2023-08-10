package placementtrianing.com;

public class SwapWithoutTemp {
    public static void main(String[] args) {
        int N=5;
        int M=6;
        N = N^M;
        M = N^M;
        N = N^M;
        System.out.println(N);
        System.out.println(M);
    }
}
