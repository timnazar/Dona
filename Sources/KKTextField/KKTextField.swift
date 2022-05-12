import SwiftUI

public struct KKTextField: View {

    public enum ValidityOption {
        case minDoubleValue(Double)
        case maxDoubleValue(Double)
    }
    
    @Binding var value: String
    @State var isValueValid = true
    @State var validationTextColor: Color = .gray
    
    var imageName: String?
    let valueMask: String?
    let defaultValue: String?
    let placeholderValue: String
    let keyboardType: UIKeyboardType
    let isReadOnly: Bool
    let validityOptions: [ValidityOption]
    
    private let logic = TextFieldLogic()
    
    public init(value: Binding<String>, imageName: String? = nil, valueMask: String? = nil, defaultValue: String? = nil, placeholderValue: String, keyboardType: UIKeyboardType = .default, isReadOnly: Bool = false, validityOptions: [ValidityOption] = []) {
        self._value = value
        self.imageName = imageName
        self.valueMask = valueMask
        self.defaultValue = defaultValue
        self.placeholderValue = placeholderValue
        self.keyboardType = keyboardType
        self.isReadOnly = isReadOnly
        self.validityOptions = validityOptions
    }
    
    public var body: some View {
        VStack(alignment: .leading) {
            HStack {
                if let imageName = imageName {
                    Image(systemName: imageName)
                        .foregroundColor(.gray)
                }
                TextField(placeholderValue, text: $value)
                    .keyboardType(keyboardType)
                    .onChange(of: value) { newValue in
                        print("new value is \(newValue)")
                        
                        print(checDoubleValueValidity(for: newValue, option: .max, limit: 4500))
                    }
    //                .onReceive(value.publisher) { newValue in
    //                    print(newValue)
    //                }
                Button(action: {
                    value = ""
                }, label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(Color.gray)
                })
            }
            .padding(8)
            .background(Color.gray.opacity(0.05))
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
            )
            
            Text("Must be between 8 and 15 characters containing at least one number and one capital letter.")
                .foregroundColor(validationTextColor)
                .font(.caption)
                .fixedSize(horizontal: false, vertical: true)
        }
    }
    
    // MARK: - Validation
    /// Describes the comparision option: minimum and maximum.
    enum ComparisionOption {
        case max
        case min
    }
    
    /// Comparing a value with the min/max allowed value.
    private func checDoubleValueValidity(for value: String, option: ComparisionOption, limit: Double, isZeroValid: Bool = true) -> Bool {
        guard let value = Double(value.replacingOccurrences(of: ",", with: ".")) else {
            return false
        }
        
        if isZeroValid,
           abs(value).isEqual(to: 0) {
            return true
        }
        
        switch option {
            case .max: return value <= limit
            case .min: return value >= limit
        }
    }
    
    // Checking the value for the maximum number of characters.
    private func checkTextLengthValidity(for value: String, option: ComparisionOption, length: Int) -> Bool {
        switch option {
            case .max: return value.count >= length
            case .min: return value.count <= length
        }
    }
    
    /// Checking for value matches against a regular expression.
    private func checkRegExpValidity(for value: String, with regExp: String) -> Bool {
        if value.range(of: regExp, options: .regularExpression) == nil {
            return false
        }
        return true
    }
}

struct KKTextField_Previews: PreviewProvider {
    static var previews: some View {
        KKTextField(value: .constant("Hello"), imageName: "person.fill", valueMask: nil, defaultValue: nil, placeholderValue: "Enter username", keyboardType: .default, isReadOnly: false, validityOptions: [.maxDoubleValue(4500)])
            .previewLayout(.fixed(width: 350, height: 200))
    }
}
