import SwiftUI
import Foundation
import Combine

var character1 = Character(position: Position(1, 1))
    
    var boardSet1: [Block] = [
        // Start Block, FIrst Line
        Block(id: Position(0, 0), description: "Start", arrowTo: .right),   
        Block(id: Position(1, 0), arrowTo: .right),
        Block(id: Position(2, 0), arrowTo: .right),
        Block(id: Position(3, 0), arrowTo: .right),
        Block(id: Position(4, 0), arrowTo: .right),
        Block(id: Position(5, 0), arrowTo: .right),
        Block(id: Position(6, 0), arrowTo: .down),
        
        // Second Line
        Block(id: Position(0, 1), arrowTo: .up),
        Block(id: Position(1, 1), description: "Good To Die", arrowTo: .down),
        Block(id: Position(2, 1), arrowTo: .left),
        Block(id: Position(3, 1), arrowTo: .left),
        Block(id: Position(4, 1), arrowTo: .left),
        Block(id: Position(5, 1), arrowTo: .left),
        Block(id: Position(6, 1), arrowTo: .left),
        
        // Third Line
        Block(id: Position(0, 2), arrowTo: .up),
        Block(id: Position(1, 2), arrowTo: .right),        
        Block(id: Position(2, 2), arrowTo: .right),
        Block(id: Position(3, 2), arrowTo: .right),
        Block(id: Position(4, 2), arrowTo: .right),
        Block(id: Position(5, 2), arrowTo: .right),
        Block(id: Position(6, 2), arrowTo: .down),
        
        // Forth Line
        Block(id: Position(0, 3), arrowTo: .up),
        Block(id: Position(1, 3), arrowTo: .down),
        Block(id: Position(2, 3), arrowTo: .left),
        Block(id: Position(3, 3), arrowTo: .left),
        Block(id: Position(4, 3), arrowTo: .left),
        Block(id: Position(5, 3), arrowTo: .left),
        Block(id: Position(6, 3), arrowTo: .left),
        
        // Fifth Line
        Block(id: Position(0, 4), arrowTo: .up),
        Block(id: Position(1, 4), arrowTo: .right),
        Block(id: Position(2, 4), arrowTo: .right),
        Block(id: Position(3, 4), arrowTo: .right),
        Block(id: Position(4, 4), arrowTo: .right),
        Block(id: Position(5, 4), arrowTo: .right),
        Block(id: Position(6, 4), arrowTo: .down),
        
        // Line 6
        Block(id: Position(0, 5), arrowTo: .up),
        Block(id: Position(1, 5), arrowTo: .left),
        Block(id: Position(2, 5), arrowTo: .left),
        Block(id: Position(3, 5), arrowTo: .left),
        Block(id: Position(4, 5), arrowTo: .left),
        Block(id: Position(5, 5), arrowTo: .left),
        Block(id: Position(6, 5), arrowTo: .left),
    ]

