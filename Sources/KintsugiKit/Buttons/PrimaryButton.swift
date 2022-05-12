import SwiftUI

public struct PrimaryButton: View {
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

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(title: "Press me")
            .previewLayout(.fixed(width: 350, height: 100))
    }
}
