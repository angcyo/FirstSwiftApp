//
//  Navigation2.swift
//  FirstSwiftApp
//
//  Created by angcyo on 16/08/02.
//  Copyright © 2016年 angcyo. All rights reserved.
//

import UIKit
import Social

class ViewController2: UIViewController {

	var param: String?

	var backParam: String?

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		print("收到的参数:\(param)")

		backParam = "返回的参数."

		title = "ViewController2"

		self.navigationController?.setToolbarHidden(false, animated: false)

		// self.navigationController?.setNavigationBarHidden(true, animated: true)

		navigationController?.title = "NNNNTitle"

	}

	override func viewDidAppear(animated: Bool) {
//		navigationController?.setToolbarItems(
//			[UIBarButtonItem(title: "item1", style: .Plain, target: nil, action: #selector(onItemTapped)),
//				UIBarButtonItem(title: "item2", style: .Plain, target: nil, action: #selector(onItemTapped)),
//				UIBarButtonItem(title: "item3", style: .Plain, target: nil, action: #selector(onItemTapped)),
//				UIBarButtonItem(title: "item4", style: .Done, target: nil, action: #selector(onItemTapped)),
//				UIBarButtonItem(title: "item5", style: .Done, target: self, action: #selector(onItemTapped))]
//			, animated: true)

		setToolbarItems([UIBarButtonItem(title: "item1", style: .Plain, target: nil, action: #selector(onItemTapped)),
			UIBarButtonItem(barButtonSystemItem: .FlexibleSpace, target: self, action: #selector(onItemTapped)),
			UIBarButtonItem(title: "item4", style: .Done, target: nil, action: #selector(onItemTapped)),
			UIBarButtonItem(barButtonSystemItem: .FlexibleSpace, target: self, action: #selector(onItemTapped)),
			UIBarButtonItem(title: "item5", style: .Done, target: self, action: #selector(onItemTapped)),
			UIBarButtonItem(barButtonSystemItem: .Save, target: self, action: #selector(onItemTapped)),
			UIBarButtonItem(barButtonSystemItem: .FlexibleSpace, target: self, action: #selector(onItemTapped))]
			, animated: true)

//        navigationController.titleview

//		navigationController?.navigationBar.translucent = true
//		navigationController?.navigationBar.barTintColor = UIColor.redColor()
//		navigationController?.navigationBar.setBackgroundImage(UIImage(CIImage: CIImage(color: CIColor(red: 200, green: 200, blue: 100, alpha: 0.5))), forBarMetrics: .Default)
//		navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
//		navigationController?.navigationBar.shadowImage = UIImage()
//        navigationController?.navigationBar.setImage

//		for view in (navigationController!.navigationBar.subviews) {
////			print("::\(view)")
//			print("------------------------")
//			if view.isKindOfClass(UIImageView) {
//				print("::Image")
//				view.removeFromSuperview()
//			}
//		}

//		self.navigationController?.navigationBar.subviews[0].removeFromSuperview()
		// self.navigationController?.navigationBar.subviews[1].removeFromSuperview()

		navigationController?.navigationBar.topItem?.title = "zzzz"
		navigationController?.navigationBar.backItem?.title = "0000000"

		let title = UILabel(frame: CGRectMake(0, 0, 10, 10))
		title.textColor = UIColor.greenColor()
		title.backgroundColor = UIColor.orangeColor()
		title.text = "TTTTT"
//		title.sizeToFit()
		// navigationController?.navigationBar.topItem?.titleView = title
		navigationItem.titleView = title
		navigationItem.prompt = "Loading"

		let title2 = UILabel(frame: CGRectMake(0, 0, 10, 10))
		title2.textColor = UIColor.greenColor()
		title2.backgroundColor = UIColor.orangeColor()
		title2.text = "222"

		let title3 = UILabel(frame: CGRectMake(0, 0, 10, 10))
		title3.textColor = UIColor.greenColor()
		title3.backgroundColor = UIColor.orangeColor()
		title3.text = "333"
//		navigationItem.leftBarButtonItem = UIBarButtonItem(customView: title2)
//		navigationItem.rightBarButtonItem = UIBarButtonItem(customView: title3)

		title.sizeToFit()
		title2.sizeToFit()
		title3.sizeToFit()

//		navigationItem.rightBarButtonItems = nil
	}

	func onItemTapped(item: UIBarButtonItem) {
		print(":::\(item.title)")
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	@IBAction func onShare(sender: AnyObject) {
		let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
		controller.setInitialText("分享内容")

		self.presentViewController(controller, animated: true, completion: nil)
	}

	@IBAction func onDismissTapped(sender: AnyObject) {
		// dismissViewControllerAnimated(true, completion: nil)//无效
		// segueForUnwindingToViewController(<#T##toViewController: UIViewController##UIViewController#>, fromViewController: <#T##UIViewController#>, identifier: <#T##String?#>)
		// viewControllerForUnwindSegueAction(#selector(onTest), fromViewController: self, withSender: nil)
		navigationController?.popViewControllerAnimated(true)
	}

	func onTest() {
		print("onTest")
	}

	@IBAction func onTest1() {
		self.navigationController?.navigationBar.subviews[1].removeFromSuperview()
	}

	@IBAction func onTest2() {
		self.navigationController?.navigationBar.subviews[0].removeFromSuperview()
	}

	@IBAction func onTest3() {
		self.navigationController?.navigationBar.subviews[3].removeFromSuperview()
	}

}