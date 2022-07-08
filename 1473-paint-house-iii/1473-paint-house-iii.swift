class Solution {
    func minCost(_ houses: [Int], _ cost: [[Int]], _ m: Int, _ n: Int, _ t: Int) -> Int {
        var cache = Array(
            repeating: Array(
                repeating: Array(
                    repeating: -1, 
                    count: t+1), 
                count: n+1), 
            count: m)
        
        func helper(_ curHouseId: Int, _ prevColor: Int, _ target: Int) -> Int {
            // Base case
            if target < 0 { return Int.max }
            if curHouseId == m { 
                if target == 0 { return 0 }
                else { return Int.max }
            }
            
            if cache[curHouseId][prevColor][target] != -1  {
                return cache[curHouseId][prevColor][target]
            }
            
			 // already painted, just need to check the neighborhood
            if houses[curHouseId] > 0 {
                let curColor = houses[curHouseId]
                let newTarget = curColor == prevColor ? target : target - 1 
                let res = helper(curHouseId + 1, curColor, newTarget)
                cache[curHouseId][prevColor][target] = res
                return res
            }
            
			// is not painted yet, will try all colors from 1 to n
            var res = Int.max
            for color in 1...n { // try all colors from 1 to n
                let newTarget = color == prevColor ? target : target - 1 
                let val = helper(curHouseId + 1, color, newTarget)
                if val != Int.max {
                    res = min(res, val + cost[curHouseId][color-1])
                }
            }
            cache[curHouseId][prevColor][target] = res
            return res
        }
        
        let ans = helper(0, 0, t)
        return ans == Int.max ? -1 : ans
    }
}