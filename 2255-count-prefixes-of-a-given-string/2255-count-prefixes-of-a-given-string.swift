class Solution {
    func countPrefixes(_ words: [String], _ s: String) -> Int {
        words.filter{ s.hasPrefix($0) }.count
    }
}