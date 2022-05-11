class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var log : Int = 0
        var counter = 0
        for n in nums {
            if n==1{
                counter = counter + 1
                log = max(log,counter)
            }else{
                counter=0
            }
        }
        return log
    }
}