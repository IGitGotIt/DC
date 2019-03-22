let a: [Int] = [3,2,4,5,6]
var prefix: [Int] = []
var suffix: [Int] = []

func fillPrefix() {
    for (index,val) in a.enumerated() {
        if index == 0 {
            prefix.append(val)
        } else {
            prefix.append(prefix.last! * val)
        }
       }
     print(prefix)
}

func fillSuffix() {
    let b = a.reversed()
    for (index,val) in b.enumerated() {
        if index == 0 {
           suffix.append(val)
        } else {
            suffix.append(suffix.last! * val)
        }
     }
    suffix = suffix.reversed()
    print(suffix)
}

func findTotal(_ i: Int) -> Int {
    guard i>0 && i < a.count && a.count > 2 else {
        return 0
    }
    return prefix[i-1] * suffix[i+1]
}
fillPrefix()
fillSuffix()
print(findTotal(2))

