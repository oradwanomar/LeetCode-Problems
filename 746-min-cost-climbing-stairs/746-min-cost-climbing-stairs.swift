final class Solution {
     func minCostClimbingStairs(_ cost: [Int]) -> Int {
        guard cost.count > 0 else {return 0}
        var cost = cost
        let n = cost.count
         
        for i in 2..<n{
            cost[i] += min(cost[i-1],cost[i-2])
        }
         
        return min(cost[n-2], cost[n-1])
     }
 }