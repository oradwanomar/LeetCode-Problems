class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var results: [[Int]] = []
        if nums.count == 0 {
            return results
        }
        
        results.append([])
        
        for i in 0..<nums.count {
            for j in 0..<results.count {
                let sum = results[j] + [nums[i]]
                results.append(sum)
            }
        }
        
        return results
    }
}