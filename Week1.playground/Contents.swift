import UIKit

//Exercise 1
var temperature: Float = 50.4
temperature = 34.6

//Exercise 2
let secondsInHour: Int = 3600
//secondsInHour = 5000 //Doesn't work because you can't reassign a constant value

//Exercise 3
var explicit: Int = 13    //Explicit declaration
var implicit = 17         //Implicit declaration

//Exercise 4
let numberOfWheels: Int
numberOfWheels = 4
//This works because a constant can be assigned a value only once. Since line 16 decalares the variable without assigning it yet, you can still assign the value later on

//Exercise 5
let π = 3.14

//Exercise 6
var 👌 = "ok"
var 👽 = "alien"
//Exercise 7
print(👽)
//Exercise 8
print(Int16.max)
print(UInt16.max)
var pi1 = 3 + 0.141591654   //Double type
print(type(of:pi1))
//It's of type double, because swift infers the type automatically. The second value requires a double to represent it, so the type must be Double

//Exercise 9
//let myNumber: UInt = -17
//This will not work because unsigned integers must be positive
//Exercise 10
//let bigNumber: Int16 = 32767 + 1
//This doesn't work because the value is outside of the range for Int16 (32767)

//Exercise 11
let pi = 3.141592654
let approximatePi: Int = Int(pi)
//You must cast it to an Int
print(approximatePi)

//Exercise 12
//This is a single line comment
/* This
 is
 a
 mutli-line
 comment.
 */

//Exercise 13
/* This is the start of the first multiline comment.
  /* This is the second, nested multiline comment. */
This is the end of the first multiline comment. */

//Exercise 14
print("This is the first sentence. " + "This is the second sentences")

//=============== Basics 2 =========================
//Exercise 15
let player: (String, Int) = ("Lemieux", 66)

//Exercise 16
let number = player.0, name = player.1
print(number, name)

//Exercise 17
let num: Int? = 2
print(num!)
//Yes, a constant can have an optional type

//Exercise 18
let value: Int? = 17
let banana: Int = value! //A Force unwrap must be added to change type from Int? to Int

//Exercise 19
//The Program would crash if a nil value was force unwrapped

//Exercise 20
//You could use nil coalescing to assign value, or an if let statement
//let banana = value ?? 17

//Exercise 21
var a = 5, b = 6
let result = (a == b) ? 3*(a+b) : a + b

//Exercise 22
let arr = [1,2,3,4,5]
print(arr.first == 5 || arr.last == 5)

//Exercise 23
var forward = [1,2,3,4,5]
var reverse = [Int]()
for i in stride(from: forward.count - 1, to: -1, by: -1) {
    reverse.append(forward[i])
}
print(reverse)

//Exercise 24
// rotate a single time to the left
func rotateArray(_ nums : [Int]) -> [Int]{
    let first = nums[0]
    var arr = nums
    for i in 0..<nums.count - 1 {
        arr[i] = arr[i + 1]
    }
    arr[nums.count - 1] = first
    return arr
}
rotateArray([1,2,3,4,5])

//Exercise 25
var arr1 = [2,4,12,20]
var sum: Int = 0
for n in arr1 {
    sum += n
}
print(sum)

//Exercise 26
func absDifference(_ n: Int) -> Int {
    if n > 51 {
        return 2 * (n - 51)
    }
    else if n < 51 {
        return 51 - abs(n)
    } else {
        return 0
    }
}

absDifference(53)
absDifference(51)
absDifference(0)
absDifference(-23)
absDifference(-49)

//Exercise 27
func isTwenty(_ a: Int, _ b: Int) -> Bool {
    if (a == 20 || b == 20) {
        return true
    }
    else if (a + b == 20) {
        return true
    }
    return false
}

isTwenty(20, 3)
isTwenty(3,20)
isTwenty(3,4)
isTwenty(12,8)

//Exercise 28
func isOpposite(a: Int, b: Int) -> Bool {
    if (a > 0 && b > 0) {
        return false
    }else if (a < 0 && b < 0){
        return false
    } else {
        return true
    }
}

isOpposite(a: 1, b: 2)
isOpposite(a: 1, b: -2)
isOpposite(a: -1, b: -2)


//Exercise 29
func inRange(_ r1: Int, _ r2: Int) -> Bool {
    if r1 >= 10 && r1 <= 30 {
        return true
    }
    else if r2 >= 10 && r2 <= 30 {
        return true
    }
    return false
}

print(inRange(2,14))

//Exercise 30
func changeString(_ first: String, _ last: String, for str: String) -> String {
    var result = ""
    result += first + str.dropFirst()
    result = String(result.dropLast())
    result += last
    return result
}

var res = changeString("a","b", for:"Word")
