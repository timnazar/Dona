//
//  ViewDecorator.swift
//  Dona
//
//  Created by Tim Nazar on 5/11/23.
//

import UIKit

public struct DonaViewDecorator<View: UIView> {
    public let decorator: (View) -> Void

    public func decorate(_ view: View) {
        decorator(view)
    }
}
