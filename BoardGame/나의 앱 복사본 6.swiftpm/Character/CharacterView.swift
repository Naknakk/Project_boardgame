import SwiftUI

struct CharacterView: View {
    var body: some View {
        Circle()
            .foregroundColor(.red)
            .frame(width: 30, height: 30)
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView()
    }
}
