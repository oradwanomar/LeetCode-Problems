class Solution {
    func minMoves(_ nums: [Int]) -> Int {
        let n = nums.count
        guard n > 1 else { return 0 }
        let sum = nums.reduce(0, +)
        let minNumber = nums.min()!
        return sum - n * minNumber
    }
}