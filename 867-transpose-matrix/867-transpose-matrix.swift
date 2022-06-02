class Solution {
    func transpose(_ A: [[Int]]) -> [[Int]] {
        var B = [[Int]](repeating: [Int](repeating: 0, count: A.count), count: A[0].count)
        for (i, row) in A.enumerated() {
            for (j, element) in row.enumerated() {
                B[j][i] = A[i][j]
            }
        }
        return B
    }
}