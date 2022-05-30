class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var count = 0

    for index in m..<m+n {
        nums1[index] = nums2[count]
        count += 1
    }

    nums1 = nums1.sorted()
    }
}