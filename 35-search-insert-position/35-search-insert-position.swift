class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let mid = (left + right) / 2
            
            if nums[mid] == target{
                return mid
            }
            if nums[mid] < target {
                left = mid + 1
            }else {
                right = mid - 1
            }
        }
        
        return left
    }
}