// class Solution {
//     func toLowerCase(_ s: String) -> String {
//         var str = ""
//         for char in s {
//             let asciiVal = char.asciiValue
//             if (asciiVal! >= 65 && asciiVal! <= 90) {
//                 str += String(Character(UnicodeScalar(asciiVal! + 32)))
//             } else {
//                 str += String(char)
//             }
//         }
//         return str
//     }
// }

class Solution {
    func toLowerCase(_ s: String) -> String {
		return s.lowercased()
	}
}