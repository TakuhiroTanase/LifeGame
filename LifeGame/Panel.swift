//
//  Panel.swift
//  LifeGame
//
//  Created by wmoodn on 2018/07/18.
//  Copyright © 2018年 wmoodn. All rights reserved.
//

import Foundation
import UIKit


class Panel: UIButton {
    var life = false
    var saveLife = false
    var x = 0
    var y = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    func Initialize(frame: CGRect,x:Int,y:Int){
        self.frame = frame
        self.x = x
        self.y = y
        self.addTarget(self, action: #selector(buttonEvent(_:)), for: UIControlEvents.touchUpInside)

    }
    @objc func buttonEvent(_ sender: UIButton) {
        Button()
    }
    func update(panels:[[Panel]])
    {
        var count = 0
        if y != 0 {
            count += panels[x][y-1].life ? 1 : 0
        }
        if y < panels[x].count-1 {
            count += panels[x][y+1].life ? 1 : 0
        }
        if x != 0 {
            count += panels[x-1][y].life ? 1 : 0
            if y < panels[x].count-1 {
                count += panels[x-1][y+1].life ? 1 : 0
            }
           if y != 0 {
                count += panels[x-1][y-1].life ? 1 : 0
            }
        }
        if x < panels.count-1
        {
            count += panels[x+1][y].life ? 1 : 0
            if y != 0 {
                count += panels[x+1][y-1].life ? 1 : 0
            }
            if y < panels[x].count-1 {
                count += panels[x+1][y+1].life ? 1 : 0
                
            }
        }
        saveLife = life ? (count == 2 || count == 3) : count == 3
        
    }
    func Button()
    {
        saveLife = !saveLife
        lifeCheck()
    }
    func lifeCheck()
    {
        life = saveLife
        self.backgroundColor = life ? UIColor.black : UIColor.white
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
