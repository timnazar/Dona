//
//  ViewDecorator+UserInteraction.swift
//  
//
//  Created by Behruz Numonov on 13.03.2024.
//

import UIKit

public extension DonaViewDecorator {
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
}
