import SwiftUI
import Foundation

struct Block: Hashable, Identifiable {
    
    var id: Position
    var description: String?
    var arrowTo: ArrowTo
    
    var image: Image {
        Image(arrowTo.rawValue)
    }
    
    enum ArrowTo: String {
        case up, down, right, left
    }
}
struct Position: Hashable {
    var x: Int
    var y: Int
    
    init (_ x: Int, _ y: Int) {
        self.x = x
        self.y = y
    }
}
