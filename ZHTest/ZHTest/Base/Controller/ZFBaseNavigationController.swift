//
//  ZFBaseNavigationController.swift
//  ZHTest
//
//  Created by apple on 16/7/11.
//  Copyright © 2016年 QZ. All rights reserved.
//

import UIKit

class ZFBaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor(),NSFontAttributeName:FONT(18)]
        navigationBar.barTintColor = RGB(0, 130, 210)
    }

    override func pushViewController(viewController: UIViewController, animated: Bool) {
        if viewControllers.count > 0 {
            //隐藏tabbar
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
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
