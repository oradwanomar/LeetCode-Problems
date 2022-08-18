class Solution {
    func minSetSize(_ arr: [Int]) -> Int {
        var halfSize = arr.count / 2
        var dictionary = Dictionary<Int,Int>()
        
        for num in arr {
            dictionary[num] = dictionary[num, default: 0] + 1
        }
        
        var sortedValues = dictionary.values.sorted(by: > )
        var count = 0 
        
        while halfSize > 0 {
            halfSize -= sortedValues[count]
            count += 1
        }
        
        return count
    }
}