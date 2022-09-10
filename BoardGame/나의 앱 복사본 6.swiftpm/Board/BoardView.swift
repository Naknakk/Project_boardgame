import SwiftUI

struct BoardView: View {
    var character: Character
    var boardSet: [Block]
    var maxY: Int {
        self.boardSet.map{$0.id.y}.max()!
    }
    var boardRows: [[Block]] {
        var boardRows: [[Block]] = Array(repeating: [], count: maxY+1)
        for block in boardSet {
            boardRows[block.id.y].append(block)
        }
        for i in 0...maxY {
            boardRows[i].sort(by: {$0.id.x < $1.id.x})
        }
        return boardRows
    }
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(0..<maxY+1) { i in
                HStack(spacing: 0) {
                    ForEach(boardRows[i]) { block in
                        BlockImage(block: block, character: character)
                    }
                }
            }
        }
    }
}
struct Board_Previews: PreviewProvider {
    static var previews: some View {
        BoardView(character: character1, boardSet: boardSet1)
    }
}
