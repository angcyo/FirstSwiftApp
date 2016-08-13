// : Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

let locale = NSLocale.currentLocale()
locale.description
locale.localeIdentifier

let dateFormat = NSDateFormatter.dateFormatFromTemplate("yyyyMMdd", options: 0, locale: locale)
dateFormat.debugDescription

//格式化当前的日期
let dateFormat2 = NSDateFormatter()
dateFormat2.dateFormat = "yyyy--MM--dd 'T' HH:mm:ss SSS"
dateFormat2.stringFromDate(NSDate())

let dateString = "20160722"
let dataFormat3 = NSDateFormatter()
dataFormat3.dateFormat = "yyyyMMdd"
let nDate: NSDate! = dataFormat3.dateFromString(dateString)
nDate.description
nDate.timeIntervalSinceNow

NSLog("%@", "angcyo")

protocol TestProtocol {

	var newName: String { get set }

	func widthName()

	func HeightName()

	func getName() -> String
}

class ProtocalClass: TestProtocol {

	var name: String {
		return "not null"
	}

	var newName: String {
		get {
			return "newName-Value"
		}
		set {

		}
	}

	func widthName() {
		print("name")
	}

	func HeightName() {

	}

	func getName() -> String {
		return "My Name"
	}

	func getOtherName() -> String {
		return "--Name"
	}
}

var pClass = ProtocalClass()
pClass.widthName()

class Test: ProtocalClass {
	override var name: String {
		return "new Name"
	}
	static var t = 1
	static let p = 2
	class var t2: Int {
		return 100
	}

	static var gp: String {
		return "---GP"
	}

	static var gp2: String {
		get {
			return "GP2"
		}
	}

	class var gp3: String {
		return "---GP"
	}

	class func onT() {
		print("Hello Class\(t2)")
	}

	static func onP() {
		print("Hello Static Func")
	}

	override func getOtherName() -> String {
		return "MMMMMMName"
	}
}

Test.onT()
var testClass = Test()
testClass.widthName()
testClass.getName()
testClass.getOtherName()
testClass.name
testClass.newName

let date = NSDate()
date.description
date.timeIntervalSinceNow
date.timeIntervalSince1970
NSDate.timeIntervalSinceReferenceDate()

print("Hello Swift.")

print("\(#file) \(#line) \(#column) \(#function)")

func printLog<T>(message: T, file: String = #file, method: String = #function, line: Int = #line) {
	print("\(file):\(line), \(method): \(message)")
}

func log(name: String, msg: String) {
	printLog("Hello Log")
}
printLog("Hello Log")
log("", msg: "")

arc4random()
arc4random_uniform(1)
arc4random_uniform(10)
arc4random_uniform(100)
arc4random_uniform(2)
arc4random_uniform(6)

arc4random_stir()




