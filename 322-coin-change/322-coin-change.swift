class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        var dp: [Int] = Array(repeating: amount+1, count: amount + 1)
	dp[0] = 0
	for i in 0..<dp.count {
		for coin in coins {
			if i - coin < 0 { continue }
			dp[i] = min(dp[i], dp[i-coin]+1)
		}
	}
	return dp[amount] == amount+1 ? -1 : dp[amount]
    }
}