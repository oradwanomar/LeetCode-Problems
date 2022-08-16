class Solution {
    func findUnsortedSubarray(_ nums: [Int]) -> Int {
        guard nums.count > 1 else {return 0}
        var sorted = nums.sorted()
        var left = 0 
        var right = 0
        
        for i in 0..<nums.count {
            if sorted[i] != nums[i] {
                left = i
                break
            }
        }
        
        for i in (0..<nums.count).reversed() {
            if sorted[i] != nums[i] {
                right = i 
                break
            }
        }
        
        if left == right {
            return 0
        }
        
        return right - left + 1
    }
}