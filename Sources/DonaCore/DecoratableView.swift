//
//  DecoratableView.swift
//  Dona
//
//  Created by Tim Nazar on 5/11/23.
//

import UIKit

public protocol DonaDecoratableView: UIView {}

public extension DonaDecoratableView {
    /// Current decorators applied to the view.
    var currentDecorators: [DonaViewDecorator<Self>] {
        get {
            return objc_getAssociatedObject(self, "currentDecorators") as? [DonaViewDecorator<Self>] ?? []
        }
        set {
            objc_setAssociatedObject(self, "currentDecorators", newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    /// An initializer that takes a ViewDecorator and applies it to the view.
    init(decorator: DonaViewDecorator<Self>) {
        self.init(frame: .zero)
        decorate(with: decorator)
    }

    /// Applies a ViewDecorator to the view and returns the view for chaining.
    @discardableResult
    func decorated(with decorator: DonaViewDecorator<Self>) -> Self {
        decorate(with: decorator)
        return self
    }

    /// Applies a ViewDecorator to the view and adds it to the current decorators array.
    func decorate(with decorator: DonaViewDecorator<Self>) {
        decorator.decorate(self)
        currentDecorators.append(decorator)
    }

    /// Reapplies all the current decorators to the view.
    func redecorate() {
        currentDecorators.forEach {
            $0.decorate(self)
        }
    }
}
