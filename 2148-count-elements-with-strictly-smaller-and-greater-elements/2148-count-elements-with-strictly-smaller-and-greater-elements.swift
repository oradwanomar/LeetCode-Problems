class Solution {
    func countElements(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return 0}
        var nums = nums.sorted()
        var counter = 0
        var smaller = nums[0] 
        var bigger = nums[nums.count-1]
        for i in 1..<nums.count-1{
            if nums[i] > smaller && nums[i] < bigger {
                counter += 1
            }
        }
        return counter 
    }
}