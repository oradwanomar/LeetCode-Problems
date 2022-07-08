class Solution {
    func findMin(_ nums: [Int]) -> Int {
        if nums.count == 1 {return nums[0]}
        if nums.count == 2 {return min(nums[0],nums[1])}
        var left = 0
        var right = nums.count - 1
        var mid = nums.count / 2
        
        while left < right {
            if nums[mid] < nums[right]{
                    right = mid 
               }else{
                    left = mid + 1
               }
            mid = (left + right) / 2   
        }
        return nums[left]
    }
}