//
//  ViewController.swift
//  LifeGame
//
//  Created by wmoodn on 2018/07/18.
//  Copyright © 2018年 wmoodn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    var panel = PanelController()
    
    var timer = Timer()
    var timerFlag = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        panel.Initialize(view: self.view)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Start(_ sender: Any) {
        if timerFlag {
            timer.invalidate();
        } else {
            timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { (timer) in
            self.panel.update()
        })
            
        }
        button.setTitle(timerFlag ?"Start" : "Stop", for:.normal)
        timerFlag = !timerFlag
    }
    
}

