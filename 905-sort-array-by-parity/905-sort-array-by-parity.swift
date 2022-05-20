class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        guard nums.count > 0 else {return nums}
        var nums = nums
        var index = 0
        for i in 0..<nums.count {
            if nums[i] % 2 == 0 {
                nums.swapAt(index,i)
                index += 1
            }
        }
        return nums
    }
}