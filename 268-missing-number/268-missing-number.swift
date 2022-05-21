class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var nums = nums
        nums.sort()
        for i in 0..<nums.count-1 {
            if nums[i] + 1 != nums[i+1] {
                return nums[i] + 1
            }
        }
        if nums.count == 1 {
            if nums[0] == 0 {
                return 1
            }else {
               return 0 
            }
        }else {
            if nums[0] == 0 {
                  return nums[nums.count - 1] + 1
            } else {
                  return 0
            }
          
        }
    }
}