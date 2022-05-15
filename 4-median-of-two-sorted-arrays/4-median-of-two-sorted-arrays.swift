class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let array : [Int] = (nums1 + nums2).sorted()
         let middleElement = array.count/2
        if array.count % 2 == 0 {
            let firstMiddle = middleElement - 1
            let median = (Double(array[firstMiddle]) + Double(array[middleElement]))/2
            return median
        }else {
            return Double(array[middleElement])
        }
    }
}