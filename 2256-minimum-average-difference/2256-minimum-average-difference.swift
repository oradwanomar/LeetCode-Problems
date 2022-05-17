class Solution {
    func minimumAverageDifference(_ nums: [Int]) -> Int {
        var minimum = 100000000
        var average = 0
        var sumForward = nums[0]
        var sumBackword = 0
        var j = 1
        var result = 0
        for i in 1..<nums.count {
            sumBackword += nums[i]
        }
        for i in 0..<nums.count-1 {
            average = (sumForward / (i+1)) - (sumBackword / (nums.count-j))
            if average < 0 {
                average *= -1
            }
            if minimum > average {
                minimum = average
                result = i
            }
            j += 1
            sumForward += nums[i+1]
            sumBackword -= nums[i+1]
        }
        sumForward = 0
        for i in 0..<nums.count{
            sumForward += nums[i]
        }
        average = sumForward / nums.count 
        
        if average < minimum{
            return nums.count-1
        }
        return result
    }
}