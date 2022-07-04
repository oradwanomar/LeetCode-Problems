class Solution {
    func candy(_ ratings: [Int]) -> Int {
        let len = ratings.count
        guard len > 1 else { return len }
        
        var candies = 0
        
        var lhs2rhs = [Int](repeating: 1, count: len)
        var rhs2lhs = [Int](repeating: 1, count: len)
        
        for i in 1..<len where ratings[i] > ratings[i - 1] {
            lhs2rhs[i] = lhs2rhs[i - 1] + 1
        }
        for i in (0..<(len - 1)).reversed() where ratings[i] > ratings[i + 1] {
            rhs2lhs[i] = rhs2lhs[ i + 1] + 1
        }
        for i in 0..<len {
            candies += max(lhs2rhs[i], rhs2lhs[i])
        }
        return candies
    }
}