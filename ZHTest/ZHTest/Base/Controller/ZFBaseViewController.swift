//
//  ZFBaseViewController.swift
//  ZHTest
//
//  Created by apple on 16/7/11.
//  Copyright © 2016年 QZ. All rights reserved.
//

import UIKit

class ZFBaseViewController: UIViewController {
    
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    var navView : UIView!
    var statusView : UIView!
    var navCenterView : UIView!
    var navTitle : UILabel!
    var refreshView : CircleRefreshView!
    
    deinit {
        
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
