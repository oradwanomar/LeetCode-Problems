class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var arr = nums.map {$0 * $0}
        return arr.sorted()
    }
}