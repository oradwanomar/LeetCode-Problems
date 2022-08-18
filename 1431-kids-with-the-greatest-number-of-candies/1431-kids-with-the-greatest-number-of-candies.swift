class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        guard candies.count > 0 else{
            return [Bool]()
        }
        
        let maxCandies = candies.max()!
        return candies.map{($0 + extraCandies) >= maxCandies} 
    }
}