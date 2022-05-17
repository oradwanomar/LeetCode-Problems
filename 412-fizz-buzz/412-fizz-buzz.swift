class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var output : [String] = []
        for number in 1...n {
            var num = String(number)
            if number%15==0 {
                output.append("FizzBuzz")
            }else if number%5==0 {
                output.append("Buzz")
            }else if number%3==0 {
                output.append("Fizz")
            }else {
               output.append(num) 
            }
        }
        return output
    }
}