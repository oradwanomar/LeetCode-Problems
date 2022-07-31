class Solution {
    func findAndReplacePattern(_ words: [String], _ pattern: String) -> [String] {
        let pattern = makePattern(pattern)
        var words = words 
        return words.filter{ pattern == makePattern($0)}
   }
    
    func makePattern(_ word: String) -> String{
    var n = 0
    var result = ""
    var dictionary = [Character:String]()
    
    for char in word {
        if dictionary[char] == nil {
            dictionary[char] = "\(n)"
            n += 1
        }
        result += dictionary[char]!
    }
    
    return result
 }
}
