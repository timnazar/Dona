//
//  File.swift
//  
//
//  Created by Tim Nazar on 7/22/23.
//

import UIKit

public extension DonaViewDecorator {
    static func axis(_ axis: NSLayoutConstraint.Axis) -> DonaViewDecorator<UIStackView> {
        DonaViewDecorator<UIStackView> {
            $0.axis = axis
        }
    }

    static func spacing(_ spacing: CGFloat) -> DonaViewDecorator<UIStackView> {
        DonaViewDecorator<UIStackView> {
            $0.spacing = spacing
        }
    }
}
