class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        var numbers : [Int] = []
        for num in nums {
            numbers.append(nums[num])
        }
        return numbers
    }
}