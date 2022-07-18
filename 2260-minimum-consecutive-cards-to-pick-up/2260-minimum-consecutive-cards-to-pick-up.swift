class Solution {
    func minimumCardPickup(_ cards: [Int]) -> Int {
        var cardsDictionary = [Int:Int]()
        var minimum = Int.max
        
        for i in 0..<cards.count{
            if cardsDictionary[cards[i]] == nil{
               cardsDictionary[cards[i]] = i 
            }else{
                let num = i - cardsDictionary[cards[i]]!
                cardsDictionary[cards[i]] = i
                minimum = min(minimum,num)
            }
        }
        if minimum == Int.max{
            return -1
        }else{
            return minimum + 1
        }
    }
}