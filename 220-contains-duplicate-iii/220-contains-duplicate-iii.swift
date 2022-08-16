class Solution {
    func containsNearbyAlmostDuplicate(_ nums: [Int], _ k: Int, _ t: Int) -> Bool {
        guard !nums.isEmpty else { return false }
        let ids = [Int](0..<nums.count).sorted{ nums[$0] < nums[$1] }
        
        for a in 0..<ids.count {
            for b in (a + 1)..<nums.count {
                let lhs = ids[a], rhs = ids[b]
                if nums[rhs] - nums[lhs] > t { break }
                if abs(rhs - lhs) <= k { return true }
            }
        }
        return false
    }
}