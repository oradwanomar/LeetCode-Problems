class Solution {
    func maximumUniqueSubarray(_ nums: [Int]) -> Int {
        var set = Set<Int>()
        var l = 0, r = 0, res = 0, sum = 0
        while r < nums.endIndex {
            while set.contains(nums[r]) {
                sum -= nums[l]
                set.remove(nums[l])
                l += 1
            }
            sum += nums[r]
            res = max(res, sum)
            set.insert(nums[r])
            r += 1
        }
        return res
    }
}