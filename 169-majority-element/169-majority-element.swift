class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var majElement = nums[0]
        var counter = 0 
        for n in nums {
           if n == majElement{
               counter+=1
           }else{
               counter-=1
           }
           if counter <= 0 {
               majElement = n
               counter = 1
           }
        }
        return majElement
    }
}






