class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var result : [Int] = []
        var dictionary = [Int:Int]()
        for i in 0..<nums.count{
           if dictionary[nums[i]] == nil {
               dictionary[nums[i]] = 1
               result.append(nums[i])
           }else if dictionary[nums[i]] == 1{
                  dictionary[nums[i]]! += 1
                  result.append(nums[i])
           }
        }
        nums = result
        return nums.count
    }
}