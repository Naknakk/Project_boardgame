/*import SwiftUI

struct MoveButton: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        Button("move") {
            $modelData.character1.move(3)
        }
    }
}

struct MoveButton_Previews: PreviewProvider {
    static var previews: some View {
        MoveButton()
    }
}
var moveTo: Position? {
    if let arrowTo = nowBlock?.arrowTo {
        switch arrowTo {
        case .up:
            return Position(position.x, position.y + 1)
        case .down:
            return Position(position.x, position.y - 1)
        case .left:
            return Position(position.x - 1, position.y)
        case .right:
            return Position(position.x + 1, position.y)
        }
    } else {
        return nil
    }
}

mutating func move(_ count: Int) {
    for _ in 1...count {
        if let nextPosition = moveTo {
            position = nextPosition
        }
    }
}*/
