class Solution {
    func rearrangeArray(_ nums: [Int]) -> [Int] {
        var arr : [Int] = []
        var positive : [Int] = []
        var negative : [Int] = []
        var count = 0
        for i in 0..<nums.count{
            if nums[i] > 0 {positive.append(nums[i])}
            if nums[i] < 0 {negative.append(nums[i])}
        }
        while(count < nums.count/2){
            arr.append(positive[count])            
            arr.append(negative[count])
            count += 1
        }
        return arr
    }
}