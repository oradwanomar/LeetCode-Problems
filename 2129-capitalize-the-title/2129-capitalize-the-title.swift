class Solution {
    func capitalizeTitle(_ title: String) -> String {
        var title  = title.lowercased()
        var array = title.components(separatedBy:" ")
        var output = ""
        var spaceCheck = array.count
        for i in 0..<array.count {
            if array[i].count > 2 {
            array[i].capitalizeFirstLetter()
            output.append(array[i])
            if i != spaceCheck-1{
                output.append(" ")
            }
            }else {
                output.append(array[i])
              if i != spaceCheck-1{
                 output.append(" ")
             }
            }
            
        }
        return output
    }
}

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}