//
//  ZFBaseViewController.swift
//  ZHTest
//
//  Created by apple on 16/7/11.
//  Copyright © 2016年 QZ. All rights reserved.
//


import UIKit
import SnapKit
class ZFBaseViewController: UIViewController {
    
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    var navView : UIView!
    var statusView : UIView!
    var navCenterView : UIView!
    var navTitle : UILabel!
    var refreshView : CircleRefreshView!
    
    deinit {
        /**
         二、反初始化方法（deinit()）
         1、定义:可以这么理解,初始化方法是为了类创建对象的时候,使用对象属性对其属性赋初始值，那么当你这个对象销毁的使用，也要对气属性进行释放。构造那么一个场景:当我们建立一个数据库访问，在初始化的时候打开链接，如果程序退出，链接不释放，资源就浪费了，反初始化方法可以释放这个链接，减少资源浪费。
         2、注意点
         当要关闭链接的时候，要把对象设置为nil,不然反初始化方法不会被调用
         
         */

        print("\(self.classForCoder)控制器释放了")
    }

    override func viewWillAppear(animated: Bool) {
        navigationController?.navigationBarHidden = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavView()
        
        // Do any additional setup after loading the view.
    }
    func createLeftNavWithImage(imageName : String) {
        let btn = UIButton(type: .Custom)
        btn.setImage(UIImage(named: imageName), forState: .Normal)
        btn.frame = CGRectMake(20, 27, 30, 30)
        btn.addTarget(self, action: #selector(ZFBaseViewController.didClickLeft), forControlEvents: .TouchUpInside)
        view.addSubview(btn)
    }
    
    func didClickLeft() {
        appDelegate.drawerController.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
    }

    func openTheDrawerGesture() {
        appDelegate.drawerController.openDrawerGestureModeMask = .None
    }
    func setupNavView() {
        statusView = UIView(frame: CGRectMake(0, 0, ScreenWidth, 20))
        statusView.backgroundColor = UIColor.clearColor()
        statusView.userInteractionEnabled = false
        view.addSubview(statusView)
        
        navView = UIView()
        navView.frame = CGRectMake(0, 20, ScreenWidth, 44)
        navView.backgroundColor = UIColor.clearColor()
        navView.userInteractionEnabled = false
        view.addSubview(navView)
        
        navCenterView = UIView()
        navCenterView.backgroundColor = UIColor.clearColor()
        navCenterView.frame = CGRectMake(ScreenWidth/2-100, 0, 200, 44)
        navView.addSubview(navCenterView)
        
        navTitle = UILabel()
        navTitle.textColor = UIColor.whiteColor()
        navTitle.font = FONT(18)
        navTitle.text = "今日热闻"
        navTitle.textAlignment = .Center
        navCenterView.addSubview(navTitle)
        navTitle.snp_makeConstraints { (make) -> Void in
            make.center.equalTo(navCenterView)
        }
    
        refreshView = CircleRefreshView()
        navCenterView.addSubview(refreshView)
        refreshView.frame = CGRectMake(10, 0, 20, 20)
        refreshView.snp_makeConstraints { (make) in
            make.left.equalTo(self.navTitle).offset(-30)
            make.width.equalTo(20)
            make.height.equalTo(20)
            make.centerY.equalTo(navCenterView)
        }
        
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
