//: Playground - Module 2, Section 2 Code Challenge 1 - Enums

import UIKit

class Point { // 2.2.1.a
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) { // 2.2.1.b
        self.x = x
        self.y = y
    }
}

enum TapGesture { // 2.2.2
    case noTap
    case singleTap
    case doubleTap
    case longTap
}

class FlappyBird { // 2.2.3
    var location: Point
    
    init() {
        self.location = Point(x: 50, y: 50)
    }
    
    func didReceive(tapGesture: TapGesture) { // 2.2.4
        location.x += 3
        
        switch tapGesture {
        case .noTap:
            return location.y -= 5
        case .singleTap:
            return location.y += 2
        case .doubleTap:
            return location.y += 3
        case .longTap:
            return location.y += 4
        
        }
    }
}

