//
//  ViewDecorator+UIScrollView.swift
//  
//
//  Created by Behruz Numonov on 13.03.2024.
//

import UIKit

public extension DonaViewDecorator {
    static func delegate(_ delegate: UIScrollViewDelegate) -> DonaViewDecorator<UIScrollView> {
        DonaViewDecorator<UIScrollView> {
            $0.delegate = delegate
        }
    }

    static func showsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool) -> DonaViewDecorator<UIScrollView> {
        DonaViewDecorator<UIScrollView> {
            $0.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        }
    }

    static func showsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool) -> DonaViewDecorator<UIScrollView> {
        DonaViewDecorator<UIScrollView> {
            $0.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        }
    }

    static func contentInsetAdjustmentBehavior(_ contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior) -> DonaViewDecorator<UIScrollView> {
        DonaViewDecorator<UIScrollView> {
            $0.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior
        }
    }

    static func delaysContentTouches(_ delaysContentTouches: Bool) -> DonaViewDecorator<UIScrollView> {
        DonaViewDecorator<UIScrollView> {
            $0.delaysContentTouches = delaysContentTouches
        }
    }

    static func keyboardDismissMode(_ keyboardDismissMode: UIScrollView.KeyboardDismissMode) -> DonaViewDecorator<UIScrollView> {
        DonaViewDecorator<UIScrollView> {
            $0.keyboardDismissMode = keyboardDismissMode
        }
    }
}
