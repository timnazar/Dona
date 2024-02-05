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

    static func distribution(_ distibution: UIStackView.Distribution) -> DonaViewDecorator<UIStackView> {
        DonaViewDecorator<UIStackView> {
            $0.distribution = distibution
        }
    }

    static func insets(_ insets: NSDirectionalEdgeInsets) -> DonaViewDecorator<UIStackView> {
        DonaViewDecorator<UIStackView> {
            $0.isLayoutMarginsRelativeArrangement = true
            $0.directionalLayoutMargins = insets
        }
    }

    static func alignment(_ alignment: UIStackView.Alignment) -> DonaViewDecorator<UIStackView> {
        DonaViewDecorator<UIStackView> {
            $0.alignment = alignment
        }
    }
}
