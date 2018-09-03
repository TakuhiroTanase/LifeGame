//
//  PanelController.swift
//  LifeGame
//
//  Created by wmoodn on 2018/07/18.
//  Copyright © 2018年 wmoodn. All rights reserved.
//

import Foundation
import UIKit
class PanelController{
    
    var panel = [[Panel]](repeating: [Panel](repeating: Panel(), count: 36), count: 36)
    
    init() {
        
    }
    
    func Initialize(view:UIView) {
        
        for x in 0...35 {
            for y in 0...35 {
                let TestView = Panel()
                TestView.Initialize(frame: CGRect.init(x:5 + x * 10, y: 50 + y * 10, width: 9, height: 9),x:x,y:y)
                let bgColor = UIColor.white
                TestView.backgroundColor = bgColor
                view.addSubview(TestView)
                panel[x][y] = TestView
            }
        }
        panel[0][4].saveLife = true
        panel[1][4].saveLife = true
        panel[0][5].saveLife = true
        panel[1][5].saveLife = true
        
        panel[12][2].saveLife = true
        panel[13][2].saveLife = true
        panel[11][3].saveLife = true
        panel[15][3].saveLife = true
        panel[14][5].saveLife = true
        panel[17][5].saveLife = true
        panel[15][7].saveLife = true
        panel[11][7].saveLife = true
        panel[10][4].saveLife = true
        panel[10][5].saveLife = true
        panel[10][6].saveLife = true
        panel[16][4].saveLife = true
        panel[16][5].saveLife = true
        panel[16][6].saveLife = true
        panel[12][8].saveLife = true
        panel[13][8].saveLife = true
        
        panel[20][2].saveLife = true
        panel[20][3].saveLife = true
        panel[20][4].saveLife = true
        panel[21][2].saveLife = true
        panel[21][3].saveLife = true
        panel[21][4].saveLife = true
        panel[22][1].saveLife = true
        panel[22][5].saveLife = true
        panel[24][0].saveLife = true
        panel[24][1].saveLife = true
        panel[24][5].saveLife = true
        panel[24][6].saveLife = true

        panel[34][2].saveLife = true
        panel[35][2].saveLife = true
        panel[34][3].saveLife = true
        panel[35][3].saveLife = true
        
        
        panel[16][17].saveLife = true
        panel[16][20].saveLife = true
        panel[17][16].saveLife = true
        panel[17][18].saveLife = true
        panel[17][19].saveLife = true
        panel[17][21].saveLife = true
        panel[18][17].saveLife = true
        panel[18][20].saveLife = true
        panel[19][17].saveLife = true
        panel[19][20].saveLife = true
        panel[20][16].saveLife = true
        panel[20][18].saveLife = true
        panel[20][19].saveLife = true
        panel[20][21].saveLife = true
        panel[21][17].saveLife = true
        panel[21][20].saveLife = true
        
        
        panel[34][30].saveLife = true
        panel[34][31].saveLife = true
        panel[35][30].saveLife = true
        panel[35][31].saveLife = true
        
        panel[25][31].saveLife = true
        panel[25][30].saveLife = true
        panel[25][29].saveLife = true
        panel[24][32].saveLife = true
        panel[24][28].saveLife = true
        panel[23][27].saveLife = true
        panel[23][33].saveLife = true
        panel[22][33].saveLife = true
        panel[22][27].saveLife = true
        panel[21][30].saveLife = true
        panel[20][32].saveLife = true
        panel[20][28].saveLife = true
        panel[19][31].saveLife = true
        panel[19][30].saveLife = true
        panel[19][29].saveLife = true
        panel[18][30].saveLife = true
        
        panel[15][33].saveLife = true
        panel[15][32].saveLife = true
        panel[15][31].saveLife = true
        panel[14][33].saveLife = true
        panel[14][32].saveLife = true
        panel[14][31].saveLife = true
        panel[13][34].saveLife = true
        panel[13][30].saveLife = true
        panel[11][35].saveLife = true
        panel[11][34].saveLife = true
        panel[11][30].saveLife = true
        panel[11][29].saveLife = true
        
        panel[0][33].saveLife = true
        panel[1][32].saveLife = true
        panel[1][33].saveLife = true
        panel[0][32].saveLife = true
        for x in panel {
            for y in x {
                y.lifeCheck()
            }
        }
    }
    
    func update(){
        for x in panel {
            for y in x {
                y.update(panels: panel)
            }
        }
        for x in panel {
            for y in x {
                y.lifeCheck()
            }
        }
    }
    func posCheck( v:CGPoint)
    {
//        let minX:Int = Int(v.x - 20) / 10
//        let minY:Int = Int(v.y - 70) / 10
//        for x in minX...minX + 4 {
//            if x >= 36||x<0{continue}
//            for y in minY...minY + 4{
//                if y>=36||y<0{continue}
        
        for x in panel {
            for y in x {
                y.PosCheck(v: v)
            }
        }
    }
}
