import SwiftUI

public struct KKTextField: View {

    enum ValidityOption {
        case minDoubleValue(Double)
        case maxDoubleValue(Double)
    }
    
    @State var value = ""
    @State var isValueValid = true
    
    @State var validationTextColor: Color = .gray
    
    let valueMask: String?
    let defaultValue: String?
    let placeholderValue: String
    let keyboardType: UIKeyboardType
    let isReadOnly: Bool
    let validityOptions: [ValidityOption]
    
    private let logic = TextFieldLogic()
    
    
    public var body: some View {
        VStack(alignment: .leading) {
            TextField(placeholderValue, text: $value)
                .padding(.horizontal)
//                .border(Color.secondary, width: 2)
                .keyboardType(keyboardType)
                .onChange(of: value) { newValue in
                    print("new value is \(newValue)")
                }
            Text("Validation text.")
                .foregroundColor(validationTextColor)
                .font(.caption)
                .padding(.horizontal)
        }
        .textFieldStyle(.roundedBorder)
    }
}

struct KKTextField_Previews: PreviewProvider {
    static var previews: some View {
        KKTextField(valueMask: nil, defaultValue: nil, placeholderValue: "Enter username", keyboardType: .default, isReadOnly: false, validityOptions: [.maxDoubleValue(4500)])
            .previewLayout(.fixed(width: 350, height: 200))
    }
}
