package placementtrianing.com;


public class MaximumProfit {
    public static void main(String[] args) {
        int[] price = {7, 1, 5, 3, 6, 4};
        int l = 0;
        int r = l;
        int profit;
        int max = 0;
        while (r < price.length) {
            if (price[r] > price[l]) {
                profit = price[r] - price[l];
                if (profit > max) {
                    max = profit;
                }
            } else {
                l = r;
            }
            r++;
        }
        System.out.println(max);
    }
}



