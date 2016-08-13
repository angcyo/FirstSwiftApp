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
}