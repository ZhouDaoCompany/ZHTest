//
//  LaunchViewController.swift
//  ZHTest
//
//  Created by apple on 16/7/13.
//  Copyright © 2016年 QZ. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class LaunchViewController: UIViewController, JSAnimatedImagesViewDataSource {
    @IBOutlet weak var animatedImagesView: JSAnimatedImagesView!
    @IBOutlet weak var text: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //如果已有下载好的文字使用
        text.text = NSUserDefaults.standardUserDefaults().objectForKey(Keys.launchTextKey) as? String
        
        //下载下一次好的文字使用
        
        ZFNetworkTool.get(START_IMAGE, params: nil, success: { (json) in
            
            let text = json["text"] as! String
            self.text.text = text
            
            NSUserDefaults.standardUserDefaults().setObject(text, forKey: Keys.launchTextKey)

            //拿到图像URL后取出图像并保存
            let launchImageURL = json["img"] as! String
            //同步调用URL 获取开始图片的json结果
            var data: NSData?
            do {
                data = try NSURLSession.sharedSession().sendSynchronousDataTaskWithURL(NSURL(string: launchImageURL)!)
            } catch _ {
                data = nil
            }
            //把NSData转换成必要的UIImage对象

            if let d = data {
                //把图片放入缓存
                NSUserDefaults.standardUserDefaults().setObject(d, forKey: Keys.launchImgKey)
                
            }
            
            }) { (error) in
                
        }
        
        //设置代理
        animatedImagesView.dataSource = self
        
        //半透明遮罩层
        let blurView = UIView()
        blurView.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
        blurView.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.45)
        animatedImagesView.addSubview(blurView)
        
        
        //渐变遮罩层
        let gradientView  = GradientView(frame: CGRectMake(0, self.view.frame.height / 3 * 2, self.view.frame.width, self.view.frame.height / 3 ), type: TRANSPARENT_GRADIENT_TYPE)
        animatedImagesView.addSubview(gradientView)
        
        
        //遮罩层透明度渐变
        UIView.animateWithDuration(2.5) { 
            blurView.backgroundColor = UIColor.clearColor()
        }
        

        // Do any additional setup after loading the view.
    }
    
    func animatedImagesNumberOfImages(animatedImagesView: JSAnimatedImagesView!) -> UInt {
        return 2
    }
    func animatedImagesView(animatedImagesView: JSAnimatedImagesView!, imageAtIndex index: UInt) -> UIImage! {
        //如果已有下载好的图片则使用

        if let data = NSUserDefaults.standardUserDefaults().objectForKey(Keys.launchImgKey) {
            return UIImage(data: data as! NSData)
        }
        return UIImage(named: "DemoLaunchImage")
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
