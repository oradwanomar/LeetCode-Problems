class Solution {
    func minMoves2(_ nums: [Int]) -> Int {
        var nums = nums.sorted()
        let medium = nums.count / 2
        let pivot = nums[medium]
        var result = 0
        for num in nums {
            if num < pivot {
                result += pivot - num 
            }else {
                result += num - pivot
            }
        }
        return result
    }
}