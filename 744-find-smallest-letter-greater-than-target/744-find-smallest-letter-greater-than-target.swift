class Solution {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
       var low = 0
var high = letters.count - 1

    while low < high {
        let mid = low + (high - low) / 2
        if letters[mid] > target {
            high = mid
        } else {
            low = mid + 1
        }
    }

    if letters[low] > target {
        return letters[low]
    }

    return letters.first!

    }
}