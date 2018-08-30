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
    
    @IBOutlet weak var mousePointer: UIImageView!
    @IBOutlet weak var mousePad: UIView!
    var moveVectol = CGPoint()
    var timer = Timer()
    var timerFlag = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        panel.Initialize(view: self.view)
        self.view.bringSubview(toFront: mousePointer)
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(ViewController.tapDouble(sender:)))
        doubleTap.numberOfTapsRequired = 2
        view.addGestureRecognizer(doubleTap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: mousePad)
            Swift.print(location)
            moveVectol = location
        }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: mousePad)
            var vectol = moveVectol
            vectol.x -= location.x
            vectol.y -= location.y
            moveVectol = location
            var pos = mousePointer.layer.position
            pos.x -= vectol.x
            pos.y -= vectol.y
            pos.x = pos.x <= 0 ? 0 : pos.x >= CGFloat(UIScreen.main.bounds.width) ?
                CGFloat(UIScreen.main.bounds.width) : pos.x
            pos.y = pos.y <= 0 ? 0 : pos.y >= CGFloat(UIScreen.main.bounds.height) ?
                CGFloat(UIScreen.main.bounds.height) : pos.y
            mousePointer.layer.position = pos
        }
    }
    @objc func tapDouble(sender: UITapGestureRecognizer!) {
        Swift.print( mousePointer.layer.position)
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

