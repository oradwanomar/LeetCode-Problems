class Solution {
    func findClosestNumber(_ nums: [Int]) -> Int {
        var res = Int.max
        guard !nums.isEmpty else { return res }
        for num in nums {
            if abs(num) < abs(res) {
                res = num
            } else if num + res == 0 {
                res = max(num, res)
            }
        }
        return res
    }
}