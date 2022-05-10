class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var input = String(x)
        var output = ""
        for i in input.reversed() {
            output.append(i)
        }
        if input == output {
            return true
        }else {
            return false
        }
    }
}