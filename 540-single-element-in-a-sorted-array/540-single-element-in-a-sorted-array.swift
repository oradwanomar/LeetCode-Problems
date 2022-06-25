class Solution {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return nums[0] }
        var left = 0
        var right = nums.count - 1
        
        while (left < right) {
            let mid = (left + right) / 2
            if nums[mid] != nums[mid-1] && nums[mid] != nums[mid+1] {
                return nums[mid]
            }else if nums[mid] == nums[mid-1]{
                if mid % 2 == 0 {
                    right = mid - 2
                }else {
                    left = mid + 1
                }
            }else {
                if mid % 2 == 0 {
                    left = mid + 2
                }else {
                    right = mid - 1
                }
            }
        }
        return nums[left]
    }
}