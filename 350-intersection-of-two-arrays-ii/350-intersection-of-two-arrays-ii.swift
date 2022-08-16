class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var dic = [Int:Int]()
        var result: [Int] = []
        
        for num in nums1 {
            if dic[num] == nil {
                dic[num] = 1
            }else {
                dic[num]! += 1
            }
        }
        
        for num in nums2 {
            if dic[num] == nil {
                dic[num] = 0
            }
            if dic[num]! > 0 {
                dic[num]! -= 1
                result.append(num)
            }
        }
        
        return result
    }
}