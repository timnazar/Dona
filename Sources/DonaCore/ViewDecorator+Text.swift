//
//  ViewDecorator+Text.swift
//  Dona
//
//  Created by Tim Nazar on 5/14/23.
//

import UIKit

public extension DonaViewDecorator {
    static func text(_ text: String?) -> DonaViewDecorator<View> {
        DonaViewDecorator<View> { view in
            if let label = view as? UILabel {
                label.text = text
            } else if let button = view as? UIButton {
                button.setTitle(text, for: .normal)
            }
        }
    }

    static func attributedText(_ text: String, attributes: [NSAttributedString.Key: Any], range: NSRange) -> DonaViewDecorator<View> {
        DonaViewDecorator<View> { view in
            let attributedString = NSMutableAttributedString(string: text)
            attributedString.addAttributes(attributes, range: range)
            if let label = view as? UILabel {
                label.attributedText = attributedString
            } else if let button = view as? UIButton {
                button.setAttributedTitle(attributedString, for: .normal)
            }
        }
    }

    static func textAlignment(_ textAlignment: NSTextAlignment) -> DonaViewDecorator<View> {
        DonaViewDecorator<View> { view in
            if let label = view as? UILabel {
                label.textAlignment = textAlignment
            } else if let textField = view as? UITextField {
                textField.textAlignment = textAlignment
            } else if let button = view as? UIButton {
                button.titleLabel?.textAlignment = textAlignment
            }
        }
    }

    static func font(_ font: UIFont) -> DonaViewDecorator<View> {
        DonaViewDecorator<View> { view in
            if let label = view as? UILabel {
                label.font = font
            } else if let textField = view as? UITextField {
                textField.font = font
            } else {
                if let button = view as? UIButton {
                    button.titleLabel?.font = font
                }
            }
        }
    }

    static func textColor(_ color: UIColor) -> DonaViewDecorator<View> {
        DonaViewDecorator<View> { view in
            if let label = view as? UILabel {
                label.textColor = color
            }
        }
    }
}
