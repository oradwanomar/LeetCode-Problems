class Solution {
    func arrayChange(_ nums: [Int], _ operations: [[Int]]) -> [Int] {
        var dict: [Int: Int] = [:]
        var nums = nums
        for i in 0..<nums.count {
            dict[nums[i]] = i
        }
        for operation in operations {
            nums[dict[operation[0]] ?? 0] = operation[1]
            dict[operation[1]] = dict[operation[0]]
        }
        return nums
    }
}