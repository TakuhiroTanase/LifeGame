//
//  Vector2.swift
//  LifeGame
//
//  Created by wmoodn on 2018/09/03.
//  Copyright © 2018年 wmoodn. All rights reserved.
//
import UIKit
extension CGPoint {
    func Long() -> CGFloat {
        return abs(x)+abs(y)
    }
    func Distance(_ v1:CGPoint,_ v2:CGPoint) -> CGFloat {
         var v1 = v1
        return abs((v1 - v2).Long())
    }
    func Distance(_ v1:CGPoint) -> CGFloat {
        return Distance(self, v1)
    }
    func Inside(_ v1:CGPoint,_ v2max:CGPoint,_ v2min:CGPoint) ->Bool {
        var v1 = v1
        return (v1 <= v2max) && (v1 >= v2min)
    }
}

infix operator +
infix operator -
infix operator +=
infix operator -=
infix operator <=
infix operator >=
infix operator <
infix operator >
func + ( lV: inout CGPoint, rV: CGPoint)->CGPoint {
    return CGPoint(x:lV.x+rV.x,y:lV.y+rV.y)
}
func - ( lV: inout CGPoint, rV: CGPoint)->CGPoint {
    return CGPoint(x:lV.x-rV.x,y:lV.y-rV.y)
}
func += ( lV: inout CGPoint, rV: CGPoint) {
    lV = lV + rV
}
func -= ( lV: inout CGPoint, rV: CGPoint) {
    lV = lV - rV
}
func >= ( lV: inout CGPoint, rV: CGPoint)->Bool {
    return  (lV.x >= rV.x) && (lV.y >= rV.y)
}
func > ( lV: inout CGPoint, rV: CGPoint)->Bool {
    return  (lV.x > rV.x) && (lV.y > rV.y)
}
func < ( lV: inout CGPoint, rV: CGPoint)->Bool {
    return  (lV.x < rV.x) && (lV.y < rV.y)
}
func <= ( lV: inout CGPoint, rV: CGPoint)->Bool {
    return  (lV.x <= rV.x) && (lV.y <= rV.y)
}


