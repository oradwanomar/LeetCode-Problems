class Solution {
    func kthSmallest(_ matrix: [[Int]], _ k: Int) -> Int {
        var result: [Int] = []
        
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {
                result.append(matrix[i][j])
            }
        }
        
        result.sort()
        return result[k-1]
    }
}