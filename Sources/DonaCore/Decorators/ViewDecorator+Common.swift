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

    static func backgroundColor(_ color: UIColor) -> DonaViewDecorator<View> {
        DonaViewDecorator<View> {
            $0.backgroundColor = color
        }
    }

    static func clipToBounds(_ clip: Bool) -> DonaViewDecorator<View> {
        DonaViewDecorator<View> {
            $0.clipsToBounds = clip
        }
    }

    static func isUserInteractionEnabled(_ isEnabled: Bool) -> DonaViewDecorator<View> {
        DonaViewDecorator<View> {
            $0.isUserInteractionEnabled = isEnabled
        }
    }

    static func isHidden(_ isHidden: Bool) -> DonaViewDecorator<View> {
        DonaViewDecorator<View> {
            $0.isHidden = isHidden
        }
    }
}
