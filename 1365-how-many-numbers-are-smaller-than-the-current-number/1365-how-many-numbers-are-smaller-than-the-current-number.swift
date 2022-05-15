class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var result : [Int] = []
        var counter = 0
        for i in 0..<nums.count {
            for j in 0..<nums.count {
                if nums[i] > nums[j] {
                    counter += 1
                }
            }
            result.append(counter)
            counter = 0
        }
        return result
    }
}