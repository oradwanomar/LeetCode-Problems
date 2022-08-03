class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
         let set1 = Set(nums1)
        let set2 = Set(nums2)
        
        return [
            Array(set1.subtracting(set2)),
            Array(set2.subtracting(set1))
        ]
    }
}