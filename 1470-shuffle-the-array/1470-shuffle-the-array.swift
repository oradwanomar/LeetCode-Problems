class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var result : [Int] = []
        var n = n
        for i in 0..<n {
            result.append(nums[i])
            result.append(nums[n])
            n += 1
        }
        return result
    }
}