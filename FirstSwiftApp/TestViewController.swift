//
//  TestViewController.swift
//  FirstSwiftApp
//
//  Created by angcyo on 16/08/13.
//  Copyright © 2016年 angcyo. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

	var params: String?
	var backParam = "返回参数"

	var delegate: TestBackDelegate?

	override func viewDidAppear(animated: Bool) {
		print("\(params)")
	}

	@IBAction func onCloseTapped(sender: AnyObject) {
		dismissViewControllerAnimated(true, completion: nil) // 销毁当前的ViewController
		delegate?.onNavBack(backParam) // 通过委托(delegate), 传递参数.
	}
}

protocol TestBackDelegate {
	func onNavBack(backParam: String)
}