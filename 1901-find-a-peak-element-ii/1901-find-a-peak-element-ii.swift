class Solution {
    func findPeakGrid(_ mat: [[Int]]) -> [Int] {
        var maximum = -1
        var temp = 0
        var result = [0,0]
        
        for i in 0..<mat.count {
            for j in 0..<mat[i].count {
                if mat[i][j] > maximum {
                    maximum = mat[i][j]
                    result = [i,j]
                }
            }
        }
        return result
    }
}