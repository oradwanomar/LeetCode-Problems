class Solution {
    func singleNumber(_ nums: [Int]) -> [Int] {
        // guard nums.count > 2 else {return nums}
        var dictionary = [Int:Int]()
        var result : [Int] = []
        for num in nums {
            if dictionary[num] == nil {
                dictionary[num] = 1
            }else {
                dictionary[num]! += 1
            }
        }
        for (key,value) in dictionary {
            if value == 1 {
                result.append(key)
            }
        }
        return result
    }
}