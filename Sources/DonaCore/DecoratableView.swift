//
//  DecoratableView.swift
//  Dona
//
//  Created by Tim Nazar on 5/11/23.
//

import UIKit

public protocol DonaDecoratableView: UIView {}

extension DonaDecoratableView {
    /// Current decorators applied to the view.
    public var currentDecorators: [DonaViewDecorator<Self>] {
        get {
            return objc_getAssociatedObject(self, "currentDecorators") as? [DonaViewDecorator<Self>] ?? []
        }
        set {
            objc_setAssociatedObject(self, "currentDecorators", newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    /// An initializer that takes a ViewDecorator and applies it to the view.
    public init(decorator: DonaViewDecorator<Self>) {
        self.init(frame: .zero)
        decorate(with: decorator)
    }

    /// Applies a ViewDecorator to the view and returns the view for chaining.
    @discardableResult
    public func decorated(with decorator: DonaViewDecorator<Self>) -> Self {
        decorate(with: decorator)
        return self
    }

    /// Applies a ViewDecorator to the view and adds it to the current decorators array.
    public func decorate(with decorator: DonaViewDecorator<Self>) {
        decorator.decorate(self)
        currentDecorators.append(decorator)
    }

    /// Reapplies all the current decorators to the view.
    public func redecorate() {
        currentDecorators.forEach {
            $0.decorate(self)
        }
    }
}
