class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var dictionary = Dictionary<Int,Bool>()
        var result : [Int] = []
        
        for num in nums1 {
            if dictionary[num] == nil {
                dictionary[num] = true
            }
        }
        for num in nums2 {
            if dictionary[num] == true {
                result.append(num)
                dictionary[num] = false
            }
        }
        return result
    }
}