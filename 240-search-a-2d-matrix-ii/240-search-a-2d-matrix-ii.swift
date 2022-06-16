class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
       return matrix.flatMap{ $0 }.contains(target)
    }
}