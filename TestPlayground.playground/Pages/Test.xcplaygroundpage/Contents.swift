import UIKit

var greeting = "Hello, playground"
print(greeting)
prefix func +(s:Int){
    
}
/*
 let a = ["1","t",nil]
 print(a.compactMap{Int($0 ?? "0")})
*/

/*
class A {
    var f = "" {
        didSet{
            print("Hello \(f)")
        }
    }
}
class B: A{
    override var f: String{
        didSet{
            print("Hello override \(f)")
        }
    }
}

let vc = B()
vc.f = "X"
vc.f = "D"
 
 */

/*
class Frut {
    var name = "Apple"{
        willSet{
            self.name = "Banana"
        }
        didSet{
            self.name = "ch"
        }
    }


    init(){
        self.name = "Mad"
    }
}
let x = Frut()
print(x.name)
*/
/*

func check (a: ()->()){
    func a(){
        print("TR")
    }
    a()
}
func checkadd (y a: ()->()){
    func y(){
        print("Q")
    }
    y()
}
check {
    print("s")
}
checkadd {
    print("T")
}
*/

/*





 
var di :[String: Int?] = ["a":1,"b":2,"c":nil]
print(di.count)

let x = 5
var re = 0
switch x {
case 0...5:
    re = 1
    fallthrough
default:
    re = 4
}

print(re)


 var sAA = [String]()

for i in 0...2 where i%2 == 0{
    print(i)
}

var i = 0
var closureArray = [()->()]()
for _ in 1...5 {
closureArray.append {
print(i)
}
i += 1
}
// here i will be 5
closureArray[0]() // prints 5
closureArray[1]() // prints 5
closureArray[2]() // prints 5
closureArray[3]() // prints 5
closureArray[4]() // prints 5


var closureArray2 = [()->()]()
var j = 0
for _ in 1...5 {
closureArray2.append { [j] in
print(j)
}
j += 1
}
// here i will be 5
closureArray2[0]() // prints 0
closureArray2[1]() // prints 1
closureArray2[2]() // prints 2
closureArray2[3]() // prints 3
closureArray2[4]() // prints 4
func doSomethingSynchronous(closure: () -> Void) {
    closure()
}


class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 100
print(stepCounter.totalSteps)




//let publisher = Deferred { () -> Just<Int> in 6 print("One") return Just(1) } print("Two") let cancelable = publisher .sink (receiveValue: { _ in print("Three") })
class ServerAPI {

}

private let auth: ServerAuth
private var token: AccessToken?

init (auth: ServerAuth) {
    self.auth = auth}
func requestToken( handler: @escaping (Result<AccessToken>) -> Void) {
    if let token = token, token.isValid{
        handler(.value(token))
        return
    }
    auth.authorize {[weak self] result in
         self?.token = result.value
        handler(result)
    }

/*
struct Point {
    var x: Int
    var y: Int
}

class Circle {
    var center: Point
    var radius: Int

    init(center: Point, radius: Int) {
        self.center = center
        self.radius = radius
    }
}

var p1 = Point(x: 0, y: 0)
var p2 = p1
p2.x = 10
print(p1) // prints "(0, 0)"
print(p2) // prints "(10, 0)"

var c1 = Circle(center: p1, radius: 10)
var c2 = c1
c2.center.x = 20
print(c1.center) // prints "(20, 0)"
print(c2.center) // prints "(20, 0)"


class VideoUploadViewController: UIViewController {
    // Create an instance of the progress bar
    let progressBar = UIProgressView()
    
    // Store the background task ID
    var backgroundTaskID: UIBackgroundTaskIdentifier = .invalid
    
    // Store the video data
    var videoData: Data?
    
    // Upload the video when the user taps the "Upload" button
    @IBAction func uploadButtonTapped(_ sender: Any) {
        // Get the video data from the user's device
        videoData = ...
        
        // Start a background task to ensure the upload process continues even if the app goes to the background
        backgroundTaskID = UIApplication.shared.beginBackgroundTask(expirationHandler: {
            UIApplication.shared.endBackgroundTask(self.backgroundTaskID)
        })
        
        // Start the upload process
        uploadVideo(videoData) { progress in
            DispatchQueue.main.async {
                // Update the progress bar with the upload progress
                self.progressBar.progress = progress
                
                // If the upload is complete, stop the background task and update the UI
                if progress == 1 {
                    UIApplication.shared.endBackgroundTask(self.backgroundTaskID)
                    self.updateUIForUploadComplete()
                }
            }
        }
    }
    
    // Upload the video
    func uploadVideo(_ videoData: Data?, completion: @escaping (Float) -> Void) {
        // Use an API request to upload the video
        ...
        
        // Update the completion with the upload progress
        ...
    }
    
    // Update the UI to indicate that the upload is complete
    func updateUIForUploadComplete() {
        ...
    }
}
*/


//struct MyArray {
//    var data: [Int]
//
//    subscript(index: Int) -> Int {
//        get {
//            return data[index]
//        }
//        set {
//            data[index] = newValue
//        }
//    }
//}
//
//var array = MyArray(data: [1, 2, 3, 4, 5])
//print(array[2])  // Output: 3
//array[2] = 10
//print(array.data) // Output: [1, 2, 10, 4, 5]


//struct Rect {
//    var origin = String()
//    var size = String()
//    init() {}
//
//}


 
 // MARK: - Print 1 to 100 number without loop

//func increment( num: Int){
// if num <= 100 {
//     print(num)
//        increment(num: num + 1)
//    }else{}
//}
//
//increment(num: 1)


//let operationQueue = OperationQueue()
//let blockOperation = BlockOperation {
//    // Do some work asynchronously
//}
//operationQueue.addOperation(blockOperation)
/*
extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}
let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")
// Prints "One inch is 0.0254 meters"
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")
// Prints "Three feet is 0.914399970739201 meters"


protocol Car {
    func strat()
    func applybreak()
    func horn()
}

class Audi:Car{
    func applybreak() {
        print("break ")
    }
    
    func strat() {
        print("Engin started ")
    }
    
   
    
    func horn() {
        print("POO POO ")
    }
}

class BMW:Car{
    func applybreak() {
        print("break ")
    }
    
    func strat() {
        print("Engin started ")
    }
    
   
    
    func horn() {
        print("POO POO ")
    }
}
class Person{
    // this tite coupling
    func driveCar(car: Audi){
        car.strat()
    }
    // loose cuppling
    func driveCarForLooscupling(car: Car){
        car.strat()
    }
    
}

let objAUDI = Audi()
let objBMW = BMW()

let personOBJ = Person()
personOBJ.driveCar(car: objAUDI)

personOBJ.driveCarForLooscupling(car: objAUDI)
personOBJ.driveCarForLooscupling(car: objBMW)
*/
//protocol FullyNamed {
//    var fullName: String { get }
//    init(fullName: String)
//}
//struct Person: FullyNamed {
//    var fullName: String
//    init(fullName: String) {
//        self.fullName = fullName
//    }
//
//}
//let john = Person(fullName: "John Appleseed")
//print(
//    john.fullName
//)




//public func solution(_ A : inout [Int]) -> Int {
//    // Implement your solution here
//    var num = Set<Int>()
//        for i in A {
//            num.insert(i)
//        }
//
//        for i in 1...(num.count + 1) {
//            if !num.contains(i) {
//                return i
//            }
//        }
//
//        return 1
//}
//var A = [1, 3, 6, 4, 1, 2]
//let s = solution(&A)
//print(A , s)
//


/*
import Foundation
protocol WorkItemProvider {
    func workItem(actionBlock: @escaping () -> ()) -> DispatchWorkItem?
}
class DefaultWorkItemProvider: WorkItemProvider {
    func workItem(actionBlock: @escaping () -> ()) -> DispatchWorkItem? {
        print("1")
        let workItem = DispatchWorkItem(block: actionBlock)
          return workItem
    }
}

class SessionWatcher {
    private var workItemProvider: WorkItemProvider
    private var workItem: DispatchWorkItem?
    private let sessionTime: TimeInterval
    private let queue: DispatchQueue

    var onTimeExceeded: (() -> Void)?

    init(sessionTime: TimeInterval = 5, workItemProvider: WorkItemProvider, queue: DispatchQueue) {
        self.workItemProvider = workItemProvider
        self.sessionTime = sessionTime
        self.queue = queue
    }

    func start() {
        workItem?.cancel()
        workItem = workItemProvider.workItem {
            print("EX")
            self.onTimeExceeded?()
        }
        if let workItem = workItem {
            queue.asyncAfter(deadline: .now() + sessionTime, execute: workItem)
        }
    }

    func receivedUserAction() {
        workItem?.cancel()
        start()
    }

    func stop() {
        workItem?.cancel()
        workItem = nil
    }
}

*/
//
//var a = 10
//var b = { [a] in
//        print (a)
//          return
//}
//a += 10
//b()
//
//func Calculate(number: Int) -> String {
//    switch (number % 3 == 0, number % 5 == 0) {
//    case (true, false):
//        return "Calc"
//    case (false, true):
//        return "Calcu"
//    case (true, true):
//        return "Calculate"
//    default:
//        return String(number)
//    }
//}
//print(Calculate(number: 15))
//
//let numbers = [1, 2, 3].map { [$0, $0] }
//print(numbers)

//let a = [String: String]()
//let b = ["app_id":"79f8074e6bc34"]
//let result = a.merging(b, uniquingKeysWith:{$1})
//let queryItems = result.map  { URLQueryItem(name: $0.key, value: $0.value) }
//print(queryItems)

let rate = 3.6728649999999998
let amount = Double(25)

print(amount * rate)


/**
 
 
 func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
     guard let root = root else { return 0 }
     var sum = 0
     if let left = root.left, left.left == nil, left.right == nil {
         sum += left.val
     }
     sum += sumOfLeftLeaves(root.left) + sumOfLeftLeaves(root.right)
     return sum
 }
 
 
 */



var array = [6,1,2,64,2, 3]

//func findlargestnumber(_ arr : [Int]){
//    var tem_arr = [Int]()
//    var large_num = Int()
//    for int in arr {
//
//    }
//}
//var tem_array = [Int]()
//
//for (i,int) in array.enumerated() {
////    if i > array.count {
//    for j in 0...(array.count - 1 ){
//        print(array[i])
//        if array[i] > array[j]{
//           // array.append(array[j])
//            print(array[j])
//        }else{
//            tem_array.append(array[j])
//        }
//   }
//
//
//}


//func bubbleSort(_ array: inout [Int]) {
//    // Step 1: Loop through the array
//    for i in 0..<array.count {
//
//        // Step 2: Loop through the unsorted portion of the array
//        for j in 1..<array.count - i {
//
//            // Step 3: Compare adjacent elements and swap if necessary
//            print(array[j], array[j - 1])
//            if array[j] < array[j - 1] {
//                let temp = array[j]
//                array[j] = array[j - 1]
//                array[j - 1] = temp
//            }
//        }
//    }
//}
//
//bubbleSort(&array)
//print(array)
//
//





*/




































