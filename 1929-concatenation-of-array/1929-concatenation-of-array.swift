class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var nums = nums
        for num in nums {
            nums.append(num)
        }
        return nums
    }
}