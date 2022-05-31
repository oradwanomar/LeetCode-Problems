class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        for i in 0..<nums.count {
            if nums[i] == target {
                return i
            }
        }
        return -1
    }
}