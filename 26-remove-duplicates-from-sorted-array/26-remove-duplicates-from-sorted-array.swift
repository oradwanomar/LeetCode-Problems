class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        let s = Set(nums)
            nums = Array(s).sorted()
            return s.count
    }
}