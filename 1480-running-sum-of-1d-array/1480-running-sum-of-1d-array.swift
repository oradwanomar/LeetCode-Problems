class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var result = [nums[0]]
        for i in 1..<nums.count {
             result.append(result[i-1]+nums[i])
        }
        return result
    }
}