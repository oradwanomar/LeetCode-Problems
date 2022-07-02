class Solution {
    func maxArea(_ h: Int, _ w: Int, _ horizontalCuts: [Int], _ verticalCuts: [Int]) -> Int {
        var horizontalCuts = horizontalCuts.sorted(by: <)
        var verticalCuts = verticalCuts.sorted(by: <)
        var maxWidth = verticalCuts[0]
        var maxHeight = horizontalCuts[0]
        
        for i in 0..<horizontalCuts.count {
          if horizontalCuts[i] == horizontalCuts[horizontalCuts.count - 1] {
                let sub = h - horizontalCuts[i]
                maxHeight = max(maxHeight,sub)
            }else {
                let heightSub = horizontalCuts[i+1] - horizontalCuts[i]
                maxHeight = max(maxHeight,heightSub)
            }
        }
        
        for i in 0..<verticalCuts.count {
           if verticalCuts[i] == verticalCuts[verticalCuts.count - 1] {
                let sub = w - verticalCuts[i]
                maxWidth = max(maxWidth,sub)
            }else {
                let widthtSub = verticalCuts[i+1] - verticalCuts[i]
                maxWidth = max(maxWidth,widthtSub)
            }
        }
        
        return (maxWidth*maxHeight) % Int(pow(10.0,9) + 7)
    }
}