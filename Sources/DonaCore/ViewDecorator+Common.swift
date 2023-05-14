//
//  ViewDecorator+Common.swift
//  Dona
//
//  Created by Tim Nazar on 5/14/23.
//

import UIKit

extension DonaViewDecorator {
    static func disabledAutoresizingMask() -> DonaViewDecorator<View> {
        DonaViewDecorator<View> {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }

    static func text(_ text: String) -> DonaViewDecorator<View> {
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

    static func tintColor(_ color: UIColor) -> DonaViewDecorator<View> {
        DonaViewDecorator<View> {
            $0.tintColor = color
        }
    }
}
