class Solution {
    func findPeakElement(_ nums: [Int]) -> Int {
         var low = 0
        var high = nums.count - 1
        
        while low < high {
            let mid = low + (high-low) / 2
            
            if nums[mid] > nums[mid+1] {
                high = mid
            } else {
                low = mid + 1
            }
        }
        
        return low
        
    }
}