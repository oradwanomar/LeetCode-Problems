class Solution {
    func maximumProduct(_ nums: [Int]) -> Int {
	let count = nums.count
	let sorted = nums.sorted()

	return max(sorted[0] * sorted[1] * sorted[count - 1], sorted[count - 1] * sorted[count - 2] * sorted[count - 3])
   }
}