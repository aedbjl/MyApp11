//
//  ViewController.swift
//  MyApp11
//
//  Created by iii-user on 2017/6/29.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //背景session處理
    
    @IBAction func test1(_ sender: Any) {
        let url = URL(string:"https://tw.yahoo.com")
        let session = URLSession(configuration: URLSessionConfiguration.default)
        
        let task = session.dataTask(with: url!, completionHandler: {(data,response,error)in
            if error == nil{
                let mydata = String(data: data!, encoding: String.Encoding.utf8)
                print(mydata)
            }else{
                print(error)
            }
        
        
        
        })
        
        task.resume()
        
        
    }
    
    @IBAction func test2(_ sender: Any) {
        let url = URL(string: "http://127.0.0.1/44444post.php")
        var req = URLRequest(url: url!)
    
        req.httpBody = "account=xxx&passwd=xxx".data(using: String.Encoding.utf8)
        req.httpMethod = "POST" //GET則body不用寫
        
        let session = URLSession(configuration: URLSessionConfiguration.default)
        let task = session.dataTask(with: req, completionHandler: {(data,response,error)in
            if error == nil{
                let str = String(data: data!, encoding: .utf8)
                print(str)
            }else{
                print(error)
            }
        })
        task.resume()
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

