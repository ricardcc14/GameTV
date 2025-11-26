
import SwiftUI

struct RoundedImageView: View {
    
    let sfSymbolName:String
    
    var body: some View {
        VStack{
            Image(systemName: "\(sfSymbolName)")
                .frame(width: 56, height: 56)
                .overlay{Circle().stroke(lineWidth: 2).frame(width: 60, height: 60)}
        }
    }
}

#Preview {
    RoundedImageView(sfSymbolName: "list.dash")
}
