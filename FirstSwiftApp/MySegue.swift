//
//  MySegue.swift
//  FirstSwiftApp
//
//  Created by angcyo on 16/08/13.
//  Copyright © 2016年 angcyo. All rights reserved.
//

import UIKit

class MySegue: UIStoryboardSegue {
	override func perform() {
		print("perform \(sourceViewController.title) to \(destinationViewController.title)")

		UIView.transitionFromView(sourceViewController.view, toView: destinationViewController.view, duration: 3, options: .TransitionCrossDissolve, completion: nil)
	}
    
}
