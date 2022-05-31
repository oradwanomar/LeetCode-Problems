class Solution {
    func prefixCount(_ words: [String], _ pref: String) -> Int {
        words.filter{ $0.hasPrefix(pref) }.count
    }
}