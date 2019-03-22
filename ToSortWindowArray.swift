let a: [Int] = [3,2,4,5,6, 0]

func findSortWindow(_ a: [Int]) -> (lower: Int,higher: Int) {
    var lower: Int = -1
    var higher: Int = -1
    //lower
    for (i,num) in a.enumerated() {
        guard i < a.endIndex - 1 else {
            break
        }
        if num > a[i+1] {
            lower = i
            break
        }
    }
    var j = lower
    while j > 0 {
        if a[lower] == a[j - 1] {
            lower = j - 1
        }
        j = j - 1
    }
    //higher
    var i = a.endIndex - 1
    while i > 0 {
        if a[i] < a[i-1] {
            higher = i
            break
        }
        i = i - 1
    }
    i = higher
    while i < a.endIndex - 1 {
        if a[higher] == a[i+1] {
            higher = i+1
        }
        i = i + 1
    }
    return (lower,higher)
}

var x = findSortWindow([3, 2,2, 0])
print(x)
