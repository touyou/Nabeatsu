//
//  ViewController.swift
//  Nabeatsu
//
//  Created by 藤井陽介 on 2016/02/01.
//  Copyright © 2016年 com.litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number: Int = 0
    @IBOutlet var label: UILabel!
    @IBOutlet var faceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = String(0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func isAho() -> Bool {
        if number % 3 == 0 {
            return true
        }
        if String(number).containsString("3") {
            return true
        }
        return false
    }
    
    @IBAction func push() {
        number++
        label.text = String(number)
        if isAho() {
            faceLabel.text = "ლ(´ڡ`ლ)"
        } else {
            faceLabel.text = "(*´ω｀*)"
        }
    }

    
    @IBAction func clear() {
        number = 0
        label.text = "\(0)"
        faceLabel.text = "(*´ω｀*)"
    }
}

