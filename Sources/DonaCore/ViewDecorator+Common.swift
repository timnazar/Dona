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
}
