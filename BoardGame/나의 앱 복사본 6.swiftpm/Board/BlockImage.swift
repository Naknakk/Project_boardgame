import SwiftUI

struct BlockImage: View {
    
    var block: Block
    var character: Character
    
    var angle: Int {
        switch block.arrowTo {
            case .up: return 270
            case .left: return 180
            case .down: return 90
            case .right: return 0
        }
    } 
    
    var body: some View {
        ZStack(alignment: .trailing) {
            Rectangle()
                .stroke(lineWidth: 1)
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 120, height: 120)
                .padding(3)
            Image(systemName: "arrow.right")
                .resizable()
                .frame(width: 20, height: 20)
                .offset(x: 9, y: 0)
                .foregroundColor(.gray)
                .opacity(0.8)
        }
        .rotationEffect(Angle(degrees: Double(angle)), anchor: .center)
        .overlay{
            if character.position == block.id {
                CharacterView()
            }
        }
        .overlay{
            Description(block: block)
        }
        
    }
}

struct Description: View {
    var block: Block
    var description: String {
        if let description = block.description {
            return description
        } else {
            return ""
        }
    }
    var body: some View {
        Text(description)
    }
}

struct BlockImage_Previews: PreviewProvider {
    static var previews: some View {
        BlockImage(block: boardSet1[2], character: character1)
            
    }
}
