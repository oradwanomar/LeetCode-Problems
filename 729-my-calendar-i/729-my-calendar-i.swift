
class MyCalendar {
    
    var array = [[Int]]()
    init() {
        
    }
    
    func book(_ start: Int, _ end: Int) -> Bool {
        for i in array {
            if max(start,i[0]) < min(end,i[1]){
                return false
            }
        }
        array.append([start,end])
        return true
    }
}

/**
 * Your MyCalendar object will be instantiated and called as such:
 * let obj = MyCalendar()
 * let ret_1: Bool = obj.book(start, end)
 */