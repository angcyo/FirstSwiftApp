//
//  ViewController.swift
//  FirstSwiftApp
//
//  Created by angcyo on 16/08/01.
//  Copyright © 2016年 angcyo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, TestBackDelegate {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		navigationItem.leftBarButtonItem = editButtonItem()

		buttonAddTest()
	}

	func buttonAddTest() {
		var button = UIButton(type: .InfoLight)
		button.frame = CGRectMake(5, 400, 66, 30)
		self.view.addSubview(button)
		button.addTarget(self, action: #selector(onButtonTapped), forControlEvents: .TouchUpInside)

		button = UIButton(type: .ContactAdd)
		button.frame = CGRectMake(5 + 66, 400, 66, 30)
		self.view.addSubview(button)
		button.addTarget(self, action: #selector(onButtonTapped), forControlEvents: .TouchUpInside)

		button = UIButton(type: .Custom)
		button.frame = CGRectMake(5 + 2 * 66, 400, 66, 30)
		self.view.addSubview(button)
		button.addTarget(self, action: #selector(onButtonTapped), forControlEvents: .TouchUpInside)

		button = UIButton(frame: CGRectMake(25 + 2 * 66, 550, 66, 30))
		button.setTitle("click", forState: .Highlighted)
		button.setTitle("null", forState: .Normal)
		button.backgroundColor = UIColor.redColor()
		self.view.addSubview(button)
		button.addTarget(self, action: #selector(onButtonTapped), forControlEvents: .TouchUpInside)

		button = UIButton(type: .DetailDisclosure)
		button.frame = CGRectMake(5 + 3 * 66, 400, 66, 30)
		self.view.addSubview(button)
		button.addTarget(self, action: #selector(onButtonTapped), forControlEvents: .TouchUpInside)

		button = UIButton(type: .InfoDark)
		button.frame = CGRectMake(5 + 4 * 66, 400, 66, 30)
		self.view.addSubview(button)
		button.addTarget(self, action: #selector(onButtonTapped), forControlEvents: .TouchUpInside)

		button = UIButton(type: .System)
		button.frame = CGRectMake(5 + 5 * 66, 400, 66, 30)
		self.view.addSubview(button)
		button.addTarget(self, action: #selector(onButtonTapped), forControlEvents: .TouchUpInside)
	}

	func onButtonTapped(button: UIButton) {
		print(button.buttonType)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if segue.identifier == "toNav2" {
			var params: String
			params = "参数"

			let nav2Controller = segue.destinationViewController as! ViewController2
			nav2Controller.param = params;
		} else if segue.identifier == "navTest" {

			var params: String
			params = "参数"

			let testVC = segue.destinationViewController as! TestViewController
			testVC.params = params

		}
	}

	@IBAction func onClose(segue: UIStoryboardSegue) {
		print("onClose")
		print(segue.description)

//		let nav2 = segue.sourceViewController as! ViewController2
		let nav2 = segue.sourceViewController as! TestViewController
		print(nav2.backParam)
	}
	@IBAction func onItem(sender: AnyObject) {
		let button = sender as! UIBarButtonItem
		print(button.title)
	}

	@IBAction func onAlertViewTapped() {
		let alertViewController = UIAlertController(title: "title", message: "message", preferredStyle: .Alert)
		alertViewController.addAction(UIAlertAction(title: "title1", style: .Cancel, handler: { action in print("onAction") }))
		alertViewController.addAction(UIAlertAction(title: "title2", style: .Default, handler: { action in
			print("1")
			print("2")
			})
		)
		alertViewController.addAction(UIAlertAction(title: "title3", style: .Default) { action in
			print("textFields:\(alertViewController.textFields?[0].text)")
			print("textFields:\(alertViewController.textFields![1].text)")
			for textFields in alertViewController.textFields! {
				print("textFields:\(textFields.text)")
			}
			}
		)
		alertViewController.addAction(UIAlertAction(title: "title4", style: .Destructive, handler: nil))

		alertViewController.addTextFieldWithConfigurationHandler({ textField in print(textField.text);textField.text = "angcyo1" })
		alertViewController.addTextFieldWithConfigurationHandler({ textField in print(textField.text);textField.text = "angcyo2" })
		alertViewController.addTextFieldWithConfigurationHandler({ textField in print(textField.text);textField.text = "angcyo3" })

		alertViewController.view.backgroundColor = UIColor.blueColor()
		self.presentViewController(alertViewController, animated: true, completion: nil)
	}

	@IBAction func onTestNav() {
		if let testVC = self.storyboard?.instantiateViewControllerWithIdentifier("testStory") {
			let vc = testVC as! TestViewController
			vc.modalTransitionStyle = .CrossDissolve // 选择过渡效果
			vc.params = "参数传递" // 参数赋值
			vc.delegate = self
			self.presentViewController(vc, animated: true, completion: nil)
		}
	}

	func onNavBack(backParam: String) {
		print("收到返回参数:\(backParam)")
	}
}

extension UIButtonType: CustomStringConvertible {
	public var description: String {
		return "value:\(rawValue)"
	}
}

