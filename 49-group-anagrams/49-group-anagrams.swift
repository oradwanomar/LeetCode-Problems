class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dictionary = [String:[String]]()
        
        for str in strs{
            let key = String(str.sorted())
            dictionary[key,default:[]].append(str)
        }
        
        return Array(dictionary.values)
    }
}