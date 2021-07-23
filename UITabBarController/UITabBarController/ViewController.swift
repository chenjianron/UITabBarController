//
//  ViewController.swift
//  UITabBarController
//
//  Created by GC on 2021/7/20.
//

import UIKit

class ViewController: UIViewController {

    let fullSize = UIScreen.main.bounds.size
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 建立一個 UILabel
        let myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        myLabel.backgroundColor = UIColor.lightGray
        myLabel.text = "系統圖示頁"
        myLabel.textAlignment = .center
        myLabel.center = CGPoint(x: fullSize.width * 0.5, y: fullSize.height * 0.2)
        self.view.addSubview(myLabel)
    }


}

