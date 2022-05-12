class Solution {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var result = 0
        for str in operations {
            if str.contains("++"){
                result += 1
            }else if str.contains("--") {
                result -= 1
            }
        }
        return result
    }
}