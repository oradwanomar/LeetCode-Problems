class Solution {
    func smallestEqual(_ nums: [Int]) -> Int {
        for i in 0..<nums.count{
            if i % 10 == nums[i] {
                return i
            }
        }
        return -1
    }
}