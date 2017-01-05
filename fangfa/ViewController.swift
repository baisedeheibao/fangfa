//
//  ViewController.swift
//  fangfa
//
//  Created by 白色的黑豹 on 17/1/4.
//  Copyright © 2017年 白色的黑豹. All rights reserved.
//

import UIKit

class Count {
    var count = 0
    func increment() {
        count += 1
    }
    func incrementBy(amount:Int) {
        count += amount
    }
    func reset() {
        self.count = 0
    }
}

struct point {
    var x = 0.0,y = 0.0
    
    mutating func moveByx(deltaX: Double,y deltaY: Double){
        x += deltaX
        y += deltaY
    }
    
    
}

struct NewPoint {
    var x = 0.0,y = 0.0
    mutating func moveByx(deltaX: Double, deltaY:Double){
        self = NewPoint(x:x + deltaX, y: y + deltaY)
    }
}

enum StateSwitch {
    case Off,Low,High
    mutating func next(){
        switch self {
        case .Off:
            self = .Low
        case .Low:
            self = .High
        case .High:
            self = .Off
        }
    }
}

enum SomeEnum {
    
}



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let counter = Count()
        counter.increment()
        print(counter.count)
        
        counter.incrementBy(amount: 4)
        print(counter.count)
        
        counter.reset()
        print(counter.count)
        
        var somePoint = point(x: 1.0, y: 3.0)
        somePoint.moveByx(deltaX: 2.0, y: 3.0)
        print("x:\(somePoint.x),y:\(somePoint.y)")
        
//        let fixedPoint = point(x: 2.0, y: 4.0)
        
        var someNewPoint = NewPoint(x: 2, y: 3)
        someNewPoint.moveByx(deltaX: 3, deltaY: 5)
        print(someNewPoint)
        
        var ovenLight = StateSwitch.Low
        ovenLight.next()
        ovenLight.next()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

