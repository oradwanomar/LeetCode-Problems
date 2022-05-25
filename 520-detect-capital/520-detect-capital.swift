class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
      guard word.count > 1 else { return true }
        let arr = Array(word)
        let firstUpper = arr[0].isUppercase
        let rest = arr[1].isUppercase
        
        if firstUpper {
            for i in 1..<arr.count {
                if arr[i].isUppercase != rest {
                    return false
                }
            } 
            
        }else {
            return word == word.lowercased()
        }
        
        return true
    }
}
