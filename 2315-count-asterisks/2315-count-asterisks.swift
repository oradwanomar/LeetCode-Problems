class Solution {
    func countAsterisks(_ s: String) -> Int {
        var isValid = true
        var result = 0
        for char in s {
            if char == "|" {
                isValid = !isValid
            }else if isValid && char == "*" {
                result += 1
            }
        }
        return result
    }
}