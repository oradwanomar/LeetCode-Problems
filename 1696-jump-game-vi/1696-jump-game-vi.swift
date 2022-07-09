class Solution {
    func maxResult(_ nums: [Int], _ k: Int) -> Int {
        var mem = [Int:Int]()
        var maxStack = [Int]()
        
        mem[0] = nums[0]
        maxStack.append(0)
        
        for i in 1..<nums.count {
            if(maxStack.count > 0 && maxStack[0] == i - k - 1) { maxStack.removeFirst() }
            
            mem[i] = mem[maxStack[0]]! + nums[i]  
            
            while(maxStack.count > 0 && mem[i]! >= mem[maxStack[maxStack.count - 1]]!) {
                maxStack.removeLast()
            }
            maxStack.append(i)            
        }
        return mem[nums.count - 1]!
    }
    
    
}