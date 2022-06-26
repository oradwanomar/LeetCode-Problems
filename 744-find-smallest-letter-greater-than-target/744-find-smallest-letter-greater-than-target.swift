class Solution {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        var low = 0
        var high = letters.count
        
        while (low < high) {
            let mid = low + (high - low) / 2
            
            if target < letters[mid] {
                high = mid
            }
            else {
                low = mid + 1
            }
        }
        
        return letters[low % letters.count]

    }
}