class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var array : [Int] = (nums1 + nums2).sorted()
         let middleElement = array.count/2
        // guard array.count > 1 else {return Double(array[0])}
        // guard array.count > 2 else {return Double(array[0]) + Double(array[1]) / 2}
        if array.count % 2 == 0 {
            let firstMiddle = middleElement - 1
            let median = (Double(array[firstMiddle]) + Double(array[middleElement]))/2
            return median
        }else {
            return Double(array[middleElement])
        }
    }
}