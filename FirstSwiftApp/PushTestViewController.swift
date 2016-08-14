//
//  PushTestViewController.swift
//  FirstSwiftApp
//
//  Created by angcyo on 16/08/14.
//  Copyright © 2016年 angcyo. All rights reserved.
//

import UIKit

class PushTestViewController: UIViewController {

	override func viewDidLoad() {
		navigationController?.setNavigationBarHidden(true, animated: true)
	}

	override func viewWillAppear(animated: Bool) {
		print("viewWillAppera")
	}

	override func viewWillDisappear(animated: Bool) {
		print("viewWillDisappear")
	}
    
    @IBAction func onCloseTapped(){
        navigationController?.popViewControllerAnimated(true)
    }
}
