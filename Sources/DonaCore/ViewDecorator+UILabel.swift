//
//  ViewDecorator+UILabel.swift
//  Dona
//
//  Created by Tim Nazar on 5/14/23.
//

import UIKit

public extension DonaViewDecorator {

    static func numberOfLines(_ lines: Int) -> DonaViewDecorator<UILabel> {
        DonaViewDecorator<UILabel> {
            $0.numberOfLines = lines
        }
    }

}
