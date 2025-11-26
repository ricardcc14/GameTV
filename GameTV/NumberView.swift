import SwiftUI

struct NumberView: View {
    
    let title: String
    var value: Int
    
    var body: some View {
        VStack {
            Text(title)
            Text("\(value)")
                .frame(width: 56, height: 56)
                .overlay {RoundedRectangle(cornerRadius: 10).stroke()}
        }
    }
}

#Preview {
    NumberView(title: "SCORE", value: 0)
}
