//
//  ViewDecorator+CALayer.swift
//  
//
//  Created by Tim Nazar on 6/23/23.
//

import UIKit

public extension DonaViewDecorator {
    static func cornerCurve(_ cornerCurve: CALayerCornerCurve ) -> DonaViewDecorator<View> {
        DonaViewDecorator<View> {
            if #available(iOS 13.0, *) {
                $0.layer.cornerCurve = cornerCurve
            }
        }
    }

    static func cornerRadius(_ cornerRadius: CGFloat) -> DonaViewDecorator<View> {
        DonaViewDecorator<View> {
            $0.layer.cornerRadius = cornerRadius
        }
    }

    static func borderWidth(_ borderWidth: CGFloat) -> DonaViewDecorator<View> {
        DonaViewDecorator<View> {
            $0.layer.borderWidth = borderWidth
        }
    }

    static func borderColor(_ borderColor: CGColor) -> DonaViewDecorator<View> {
        DonaViewDecorator<View> {
            $0.layer.borderColor = borderColor
        }
    }
}
