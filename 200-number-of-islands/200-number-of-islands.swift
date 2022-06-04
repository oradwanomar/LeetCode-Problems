class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var numberOfIslands = 0
        var matrix = grid
        for i in 0..<matrix.count{
            let row = matrix[i]
            for j in 0..<row.count{
                let value = matrix[i][j]
                if value == "1" {
                    numberOfIslands += 1
                    search(i,j,&matrix)
                }
            }
        }
        return numberOfIslands
    }
    
    func search(_ row:Int,_ col: Int,_ grid: inout [[Character]]) {
        guard row >= 0 , row < grid.count , col >= 0 , col < grid[0].count else {return}
        
        guard grid[row][col] == "1" else {return}
        
        grid[row][col] = "0"
        
        search(row + 1,col,&grid)
        search(row - 1,col,&grid)
        search(row,col + 1,&grid)
        search(row,col - 1,&grid)
    }
}