class Solution {
    func truncateSentence(_ s: String, _ k: Int) -> String {
        var splitString = s.components(separatedBy: " ")
        var s = ""
        for i in 0..<splitString.count - (splitString.count - k) {
            s.append(splitString[i])
            if i < splitString.count - (splitString.count - k) - 1 {
                    s.append(" ")
            }
        }
        return s
    }
}