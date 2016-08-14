//
//  ActivityViewController.swift
//  FirstSwiftApp
//
//  Created by angcyo on 16/08/13.
//  Copyright © 2016年 angcyo. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController {

	override func viewWillAppear(animated: Bool) {
		print("will appear")

		self.view.alpha = 0.6

		tabBarItem.title = "ceshi...."
        
	}

	@IBAction func onStyle1() {
		print("style1")
		let activityView = UIActivityIndicatorView(activityIndicatorStyle: .Gray)
		activityView.color = UIColor.redColor()
		activityView.startAnimating()
		activityView.center = CGPointMake(30, 30)
		view.addSubview(activityView)
	}

	@IBAction func onStyle2() {
		print("style2")
		let activityView = UIActivityIndicatorView(activityIndicatorStyle: .White)
		activityView.color = UIColor.redColor()
		activityView.startAnimating()
		activityView.center = CGPointMake(100, 30)
		view.addSubview(activityView)

	}

	@IBAction func onStyle3() {
		print("style3")
		let activityView = UIActivityIndicatorView(activityIndicatorStyle: .WhiteLarge)
		activityView.color = UIColor.redColor()
//		activityView.hidesWhenStopped = false
		activityView.startAnimating()
		activityView.center = CGPointMake(230, 30)
		view.addSubview(activityView)

		// NSTimer.scheduledTimerWithTimeInterval(0.3, target: self, selector: #selector(onTimer), userInfo: activityView, repeats: true)
		NSTimer.scheduledTimerWithTimeInterval(3, target: self, selector: #selector(onTimer2), userInfo: activityView, repeats: true)
	}

	func onTimer(sender: AnyObject) {

		guard let timer = sender as? NSTimer else {
			return
		}

		guard let userInfo = timer.userInfo else {
			return
		}

		let view = userInfo as! UIActivityIndicatorView
		view.stopAnimating()

		UIApplication.sharedApplication().networkActivityIndicatorVisible = true
	}

	func onTimer2(sender: NSTimer) {

		print("onTimer2")
		guard let userInfo = sender.userInfo else {
			return
		}

		let view = userInfo as! UIActivityIndicatorView
		view.stopAnimating()

		UIApplication.sharedApplication().networkActivityIndicatorVisible = true

		sender.invalidate()
	}
}
