import SwiftUI

public struct KKTextField: View {

    public enum ValidityOption {
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
    
    public init(valueMask: String? = nil, defaultValue: String? = nil, placeholderValue: String, keyboardType: UIKeyboardType = .default, isReadOnly: Bool = false, validityOptions: [ValidityOption] = []) {
        self.valueMask = valueMask
        self.defaultValue = defaultValue
        self.placeholderValue = placeholderValue
        self.keyboardType = keyboardType
        self.isReadOnly = isReadOnly
        self.validityOptions = validityOptions
    }
    
    public var body: some View {
        VStack(alignment: .leading) {
//            TextField(one)
            TextField(placeholderValue, text: $value)
                .padding(.horizontal)
//                .border(Color.secondary, width: 2)
                .keyboardType(keyboardType)
                .onChange(of: value) { newValue in
                    print("new value is \(newValue)")
                    
                    print(checDoubleValueValidity(for: newValue, option: .max, limit: 4500))
                }
//                .onReceive(value.publisher) { newValue in
//                    print(newValue)
//                }
            Text("Validation text.")
                .foregroundColor(validationTextColor)
                .font(.caption)
                .padding(.horizontal)
        }
        .textFieldStyle(.roundedBorder)
    }
    
    // MARK: - Validation
  
    
    /// Describes the comparision option: minimum and maximum.
    enum ComparisionOption {
        case max
        case min
    }
    
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
    
    private func checkTextLengthValidity(for value: String, option: ComparisionOption, length: Int) -> Bool {
        switch option {
            case .max: return value.count >= length
            case .min: return value.count <= length
        }
    }
    
    private func checkRegExpValidity(for value: String, with regExp: String) -> Bool {
        if value.range(of: regExp, options: .regularExpression) == nil {
            return false
        }
        return true
    }
}

struct KKTextField_Previews: PreviewProvider {
    static var previews: some View {
        KKTextField(valueMask: nil, defaultValue: nil, placeholderValue: "Enter username", keyboardType: .default, isReadOnly: false, validityOptions: [.maxDoubleValue(4500)])
            .previewLayout(.fixed(width: 350, height: 200))
    }
}
