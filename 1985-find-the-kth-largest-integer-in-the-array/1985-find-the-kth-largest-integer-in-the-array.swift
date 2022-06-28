class Solution {
    func kthLargestNumber(_ nums: [String], _ k: Int) -> String {
        return nums.sorted { $0.count == $1.count ? $0 < $1 : $0.count < $1.count }[nums.count - k]
    }
}