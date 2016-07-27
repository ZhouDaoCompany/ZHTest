//
//  ZFHomeViewController.swift
//  ZHTest
//
//  Created by apple on 16/7/15.
//  Copyright © 2016年 QZ. All rights reserved.
//

import UIKit

class ZFHomeViewController: ZFBaseViewController {
    
    // 轮播图view
    var cyclePictureView : CyclePictureView!
    // 轮播图数组
    var imageURLArray : [String] = []
    // 轮播图的标题数据
    var imageTitleArray : [String] = []
    /// 页数的下标，用来计算接口中传的Date
    var dateIndex : Int = 1
    
    var tableView :UITableView!
    
    let months = ["1","2","3","4","5","6","7","8","9","10","11","12"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()

    }
    
    //MARK: - Private methods
    func initUI()  {
        
        view.backgroundColor = UIColor.whiteColor()
//        let rectFrame = CGRectMake(0, 64, ScreenWidth, ScreenHeight - 64)
//        
//        let webView = UIWebView(frame: rectFrame)
//        webView.backgroundColor = UIColor.clearColor()
//        let url = NSURL(string: "https://www.baidu.com")
//        let request = NSURLRequest(URL: url!)
//        webView.loadRequest(request)
//        self.view.addSubview(webView)
        
//        //UIButton
//        let btn = UIButton(type: UIButtonType.RoundedRect)
//        btn.backgroundColor = UIColor.blackColor()
//        btn.tintColor = UIColor.whiteColor()
//        btn.setTitle("按钮", forState: .Normal)
//        btn.addTarget(self, action: #selector(ZFHomeViewController.tapMe), forControlEvents: UIControlEvents.TouchUpInside)
//        btn.frame = CGRectMake(100, 64, 100, 100)
//        cutRoundWith(btn)
//        self.view.addSubview(btn)
        
        //UITextField
//        let rectFrame = CGRectMake(20, 75, 100, 30)
//        let textField = UITextField(frame: rectFrame)
//        textField.keyboardType = .EmailAddress
//        textField.returnKeyType = .Done
//        textField.keyboardAppearance = .Dark
//        textField.borderStyle = .RoundedRect
//        textField.placeholder = "请输入"
//        textField.textColor = UIColor.redColor()
//        textField.clearButtonMode = .WhileEditing
//        textField.autocorrectionType = .No
//        self.view.addSubview(textField)
//        
        
        
//        let str = "ttttrrrrcxcavhsvhxasiiqdwqcfffffffff"
//        
//        
//        var arr:[Character] = []
//        var orderStr = ""
//        
//        
//        for ch in str.characters {
//            
//            arr.append(ch)
//        }
//        
//        for var i = arr.count - 1; i >= 0; i -= 1 {
//            
//            var ch:Character = arr[i]
//            
//            orderStr.append(ch)
//            
//        }
//        print(orderStr)
        
        
        
//        var arr : [String] = []
//        var arr1 : Array<String>
//        var arr3 = Array<String>()
//        var arr4 = Array<String>(count: 10, repeatedValue: "111")
//        var arr5 = ["1","2"]
//        arr5[0..<arr5.count] = []
//        arr4.removeAll()
//        
//        
//        var myDic = Dictionary<String, String>()
//        
//        var dic:[String : String] = [:]
        
        
        
        
        
        
        var arr = Array<String>()
        var arr1 = ["1","2"]
        var arr2:[String] = []
        var arr3 = Array<String>(count: 10, repeatedValue: "22")
        
        var aDict = Dictionary<String, String>()
        var dic:[String : String] = [:]
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        

        
//        var statues:[Character:Int] = [:]
//        for ch in str.characters {
//            
//            let num = statues[ch]
//            
//            if num == nil {
//                
//                statues[ch] = 1
//            }else {
//                statues[ch] = num! + 1
//            }
//            
//        }
//        
//        var maxNum = 0
//        
//        for occures in Array(statues.values) {
//            if occures > maxNum {
//                maxNum = occures
//            }
//        }
//        
//        for (ch, occures) in statues {
//            if occures == maxNum {
//                print(ch)
//            }
//        }
        
        
        
        
        
//        tableView = UITableView(frame: rectFrame)
//        tableView.delegate = self
//        tableView.dataSource = self
//        tableView.tableFooterView = UIView(frame: CGRectZero)
//        self.view.addSubview(tableView)
    
    }
    
    func tapMe() {
        print("按钮被点击")
    }
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return months.count
//    }
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let identifer = "cellId"
//        var cell = tableView.dequeueReusableCellWithIdentifier(identifer)
//        if cell == nil {
//            cell = UITableViewCell.init(style: .Default, reuseIdentifier: identifer)
//        }
//        cell?.textLabel?.font = FONT(13)
//        cell?.textLabel?.text = months[indexPath.row]
//        cell?.backgroundColor = LRRandomColor()
//        return cell!
//    }
    
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
