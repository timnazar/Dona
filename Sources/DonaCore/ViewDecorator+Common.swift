//
//  ViewDecorator+Common.swift
//  Dona
//
//  Created by Tim Nazar on 5/14/23.
//

import UIKit

public extension DonaViewDecorator {
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


    static func contentMode(_ contentMode: UIView.ContentMode) -> DonaViewDecorator<View> {
        DonaViewDecorator<View> {
            $0.contentMode = contentMode
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

    // MARK: - UILabel's Decorators.
    static func numberOfLines(_ lines: Int) -> DonaViewDecorator<UILabel> {
        DonaViewDecorator<UILabel> {
            $0.numberOfLines = lines
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

    // MARK: - UIButton

    static func systemImage(_ imageName: String) -> DonaViewDecorator<View> {
        DonaViewDecorator<View> {
            if let button = $0 as? UIButton {
                button.setImage(UIImage(systemName: imageName), for: .normal)
            }
        }
    }
}
