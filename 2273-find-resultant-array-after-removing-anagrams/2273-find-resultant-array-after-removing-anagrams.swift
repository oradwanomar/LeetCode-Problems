class Solution {
    func removeAnagrams(_ words: [String]) -> [String] {
        var words = words
        var count = 0
        
        while count < words.count - 1 {
            if words[count].sorted() == words[count+1].sorted(){
                words.remove(at: count+1)
            }else{
                count += 1
            }
        }
        return words
    }
}