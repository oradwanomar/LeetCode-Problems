class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
         if matrix[0][0] == target {return true}
        guard matrix[0][0] < target || matrix.last!.last! > target else {return false}
        var row = matrix.count - 1
        var col = 0
        while(row >= 0 && col < matrix[0].count){
            if matrix[row][col] > target {
                row -= 1
            }else if matrix[row][col] < target {
                col += 1
            }else {
                return true
              }
        }
        return false
    }
}