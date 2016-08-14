//
//  SnapshotViewController.swift
//  FirstSwiftApp
//
//  Created by angcyo on 16/08/07.
//  Copyright © 2016年 angcyo. All rights reserved.
//

import UIKit

class SnapshotViewController: UIViewController {

	@IBOutlet weak var snapshotButton: UIButton!

	@IBOutlet weak var testButton: UIButton!

	let screen = UIScreen.mainScreen()
	var brightness = 1.0

	override func viewDidAppear(animated: Bool) {
		self.view.backgroundColor = UIColor.whiteColor()

		print("nibname:\(nibName) nibbounds:\(nibBundle)")

//		tabBarController?.selectedIndex = 1
	}

	override func viewDidLoad() {
//		tabBarController?.selectedViewController = tabBarController?.viewControllers![2]
	}

	@IBAction func onButton(sender: AnyObject) {
		print("brightness:\(screen.brightness)")
		screen.brightness = CGFloat(brightness)
		brightness = 0.1
		print("brightness:\(screen.brightness)")
	}

	@IBAction func onSnapshot(sender: AnyObject, forEvent event: UIEvent) {
		let snapView = UIScreen.mainScreen().snapshotViewAfterScreenUpdates(true)
		snapView.backgroundColor = UIColor.redColor()
		snapView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
		self.view.addSubview(snapView)

		//
		print("screen application frame:\(UIScreen.mainScreen().applicationFrame)")
		print("screen scale:\(UIScreen.mainScreen().scale) native scale:\(UIScreen.mainScreen().nativeScale)")
		print("screen bounds: \(UIScreen.mainScreen().bounds)")
		print("screen native bounds:\(UIScreen.mainScreen().nativeBounds)")

		//
		print("view frame:\(self.view.frame)")
		print("view bounds:\(self.view.bounds)")

		//
		print("button frame:\(snapshotButton.frame)")
		print("button bounds:\(snapshotButton.bounds)")

		//
		print("button2 frame:\(testButton.frame)")
		print("button2 bounds:\(testButton.bounds)")

	}

	@IBAction func onSelectorTabBarItem() {
//        tabBarController?.selectedIndex = 1
		tabBarController?.selectedViewController = tabBarController?.viewControllers![2]
	}
}