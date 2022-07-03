class Solution {
    func wiggleMaxLength(_ nums: [Int]) -> Int {
        guard nums.count > 1 else {return nums.count}
        var res = 1
        var direction = 0
        for i in 1..<nums.count{
            if nums[i] - nums[i-1] > 0 && direction > -1 {
                res += 1
                direction = -1
            }else if nums[i] - nums[i-1] < 0 && direction < 1{
                res += 1
                direction = 1
            }
        }
        return res
    }
}

