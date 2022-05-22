class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var nums = nums 
        nums.sort()
        return nums[0]
    }
}