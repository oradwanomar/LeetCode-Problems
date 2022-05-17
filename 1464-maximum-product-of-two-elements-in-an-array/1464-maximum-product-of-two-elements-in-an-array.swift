class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var nums = nums 
        nums.sort()
        return (nums[nums.count-1] - 1) * (nums[nums.count-2] - 1)
    }
}