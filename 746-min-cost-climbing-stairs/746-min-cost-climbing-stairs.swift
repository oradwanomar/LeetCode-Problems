final class Solution {
     func minCostClimbingStairs(_ cost: [Int]) -> Int {
        if cost.isEmpty {
            return 0
        }
        var cost = cost
        var i = 2
        let count = cost.count
         
        for i in 2..<cost.count{
            cost[i] += min(cost[i-1],cost[i-2])
        }
         
        return min(cost[count-2], cost[count-1])
     }
 }