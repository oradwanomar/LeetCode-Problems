class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var nums = nums.sorted()
        var counter = 1 
        var result = 0
        for i in stride(from: nums.count - 1, through: 0, by: -1 ) {
              if counter != k {
                  counter += 1
              }else {
                  return nums[i]
              }
         }
        return 0
    }
}