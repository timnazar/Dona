import SwiftUI

public struct KKButton: View {
    var title: String
    var action: (() -> Void)?
    
    public var body: some View {
        Button(action: {
            action?()
        }, label: {
            Text(title)
                .padding()
                .background(Color.accentColor)
                .foregroundColor(.white)
                .cornerRadius(8, antialiased: true)
        })
    }
}

struct KKButton_Previews: PreviewProvider {
    static var previews: some View {
        KKButton(title: "Press me")
            .previewLayout(.fixed(width: 350, height: 100))
    }
}
