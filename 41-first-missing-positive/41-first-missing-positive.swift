class Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        var nums = nums
        var i = 0
        while i < nums.count {
            if nums[i] > 0 && nums[i] < nums.count && nums[i] != nums[nums[i] - 1] {
                nums.swapAt(i, nums[i] - 1)
            } else {
                i += 1
            }
        }
        for i in 0..<nums.count {
            if nums[i] != i + 1 {
                return i + 1
            }
        }
        return nums.count + 1
    }
}