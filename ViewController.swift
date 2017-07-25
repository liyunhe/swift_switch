//
//  ViewController.swift
//  swift_switch
//
//  Created by YunHe Lee on 2017/7/25.
//  Copyright © 2017年 YunHe Lee. All rights reserved.
// swift :对空格比较严   空格打法

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        switchDemo(num:7)
        stringDemo5()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
     --------OC---------
     1:·必case 必须为整数
     2·每个语句都需要一个break
     3:·如果要穿透 去掉break
     4:   如果定义局部变量，需要{}
     ------swift------
     1:必case 可以是其他类型
     *2：可以么有break
     3：所有的分支最要一天紫菱
     4：多个条件用《,》分开->穿透
     5：
     */
    func switchDemo(num:Int) {
        switch num {
        case 10:
            print("优秀~~")
        case 9:
            print("一般~~")
        default:
            print("不及格~~")
        }
    }
    //MARK:FOR
    /*
     for 循环
     */
    func forDemo()  {
        
        /*
         1:传统的for 3.0  被取消
         2：++i/i++已被取消
         科普：
         -------------------
         num = i++:
         temp = i
         num = tem
         i = temp+1
         --------------------
         num = ++1:
         i = i +1
         num = i
         --------------------
         */
        //0 - 5  [0,5)  [闭区间,开区间) 0..<5
        for i in 0..<5 {
            //0--4
            print(i)
        }
      //   [0,5]  [闭区间,比区间] 0...5
        for i in 0...5 {
            print(i)
        }
        let r1 = 0..<5
        let r2 = 0...5
        //CountableRange<Int> ：开区间
        print(r1)
        // CountableClosedRange<Int> ：闭区间
        print(r2)
    }
    //反续便利
//reversed 翻转
    func forDemo2()  {
        for i in (0..<5).reversed() {
            print(i)
        }
    }
    //String :字符串 String 是一个结构体
    /*
     */
    //MARK:-字符串的便利
    func StringDemo(){
        //长度
        let hStr = "hello world"
        //返回指定编码的对应字节 UTF-8 是3个字节
        print("str is lenght = \(hStr.lengthOfBytes(using: .utf8))")
        print("str is lenght = \(hStr.characters.count))")
        //字符串总转
       //类型转换
        //swift : "值 as 类型 "
        //oc: id str (nsstring *)str 
        // ? 定义  !解包
        let oc =  hStr as NSString
        print(oc)
        let str = "我要飞得更高,飞得更远"
//返回字符的个数
        for c in str.characters {
            print(c)
        }
        
    }
    //MARK:-字符的拼接
    /*
     1: 字符串拼接 “\(var/let)”
     2: 需要注意可选类型
     3：其他类型 不用转换
     */
    func stringDemo2(){
        let name = "老王"
        let age = "11"
        let title: String? = "Boss"
        //字符串拼接请注意 可选类型
        let str = "\(name) \(age) \(title ?? " ")"
        
        print(str)
        
    }
    //MARK:格式化
    func StringDemo4()  {
        //时间类型
        let h = 3
        let m = 6
        let s = 30
        print("\(h):\(m):\(s)")
        //使用格式化字符串
        let dataStr = String (format: "%2d:%2d:%2d", h,m,s)
        print(dataStr)
    }
    //MARK:字符串  字串的获取
    func stringDemo5() {
        //String 转OC NSsting
        let str = "厉害了我的哥"
        let ocStr = str as NSString
        let s = ocStr.substring(with:NSMakeRange(3, 3));
        print(s);
        //swift 3.0 处理方法 我们 和上面的我们 没有任何关系  只是获取开始位置
        let s2 = str.substring(from: "我们".endIndex)
        print(s2)
        guard let rage = str.range(of: "厉害") else {
             print("-----------")
            print("没有得到字串")
            return
        }
        print(rage)
        print(str.substring(with: rage))
        
    }
}

