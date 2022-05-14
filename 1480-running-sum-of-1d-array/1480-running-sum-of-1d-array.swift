class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var result : [Int] = []
        for i in 0..<nums.count {
            if i == 0 {
               result.append(nums[0])
            }else {
                 result.append(result[i-1]+nums[i])
            }
        }
        return result
    }
}