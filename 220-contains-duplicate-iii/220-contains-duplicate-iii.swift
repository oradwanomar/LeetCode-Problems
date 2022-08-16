class Solution {
    func containsNearbyAlmostDuplicate(_ nums: [Int], _ k: Int, _ t: Int) -> Bool {
        guard !nums.isEmpty else { return false }
        let ids = [Int](0..<nums.count).sorted{ nums[$0] < nums[$1] }
        
        for i in 0..<ids.count {
            for j in (i + 1)..<nums.count {
                let lhs = ids[i], rhs = ids[j]
                
                if nums[rhs] - nums[lhs] > t {
                    break 
                }
                
                if abs(rhs - lhs) <= k {
                    return true 
                }
            }
        }
        return false
    }
}