class Solution {
    func search(_ nums: [Int], _ target: Int) -> Bool {
        guard nums.count > 0 else {return false}
        var left = 0
        var right = nums.count - 1
        
        while(left < right){
            let mid = ( left + right ) / 2
            if nums[mid] == target {
                return true
            }
            if nums[mid] > nums[right] {
                if nums[left] <= target && nums[mid] > target {
                    right = mid
                }else {
                    left = mid + 1
                }
            }else if nums[mid] < nums[right] {
                if nums[mid] < target && nums[right] >= target {
                    left = mid + 1
                }else {
                    right = mid
                }
            } else {
                right -= 1
            }
        }
        return nums[left] == target ? true : false
    }
}