class Solution {
    func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {
        var nums = nums.sorted()
        var result: [Int] = []
        for i in 0..<nums.count where nums[i] == target{
            result.append(i)
        }
        return result
    }
}