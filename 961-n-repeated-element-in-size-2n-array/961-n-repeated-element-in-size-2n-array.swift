class Solution {
    func repeatedNTimes(_ nums: [Int]) -> Int {
        var dic = [Int:Int]()
        var max = 0
        for num in nums {
            if dic[num] == nil {
                dic[num] = 1
            }else {
                dic[num]! += 1
            }
            if dic[num] == nums.count/2 {
                max = num
            }
        }
        
        return max
    }
}