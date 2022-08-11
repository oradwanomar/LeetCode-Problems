class Solution {
    func equalPairs(_ grid: [[Int]]) -> Int {
        var gridVer: [[Int]] = [[]]
        var result = 0 
        
        for i in 0..<grid.count {
            var arr: [Int] = []
            for j in 0..<grid.count {
                arr.append(grid[j][i]) 
            }
            gridVer.append(arr)
        }
        
        for i in grid {
            for j in gridVer {
                if i == j {
                    result += 1
                }
            }
        }
        
        return result
    }
}