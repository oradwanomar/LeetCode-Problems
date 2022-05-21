class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {return 0}
        var nums = nums
        nums.sort()
        var counter = 1
        var log = 0
        for i in 0..<nums.count-1 {
            if nums[i] + 1 == nums[i+1] || nums[i] == nums[i+1] && counter != 1 && nums[i+1] != nums[nums.count - 1]{
                if nums[i] == nums[i+1] {
                    
                }else {counter += 1}
                
            }else {
                log = max(log,counter)
                counter = 1
            }
        }
        log = max(log,counter)
        return log
    }
}