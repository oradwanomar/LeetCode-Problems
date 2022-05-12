class Solution {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var result = 0
        for str in operations {
            if str == "++X" || str == "X++"{
                result += 1
            }else{
                result -= 1
            }
        }
        return result
    }
}