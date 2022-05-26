class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let trimmed = s.trimmingCharacters(in: .whitespacesAndNewlines)
        let arr = trimmed.components(separatedBy:" ")
        return arr[arr.count - 1].count
    }
}