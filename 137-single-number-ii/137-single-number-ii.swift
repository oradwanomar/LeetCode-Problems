class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var dictionary = [Int:Int]()
        var result = 0
        for num in nums {
            if dictionary[num] == nil {
                dictionary[num] = 1
            }else {
                dictionary[num]! += 1
            }
        }
        for (key,value) in dictionary {
            if dictionary[key] == 1 {
                result = key
            }
        }
        return result
    }
}