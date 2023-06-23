//
//  ViewDecorator+UIImage.swift
//  Dona
//
//  Created by Tim Nazar on 5/14/23.
//

import UIKit

public extension DonaViewDecorator {
    @available(iOS 13.0, *)
    static func systemImage(_ imageName: String) -> DonaViewDecorator<View> {
        DonaViewDecorator<View> { view in
             if let imageView = view as? UIImageView {
                 imageView.image = UIImage(systemName: imageName)
             } else if let button = view as? UIButton {
                 button.setImage(UIImage(systemName: imageName), for: .normal)
             }
        }
    }

    static func namedImage(_ imageName: String) -> DonaViewDecorator<View> {
        DonaViewDecorator<View> { view in
             if let imageView = view as? UIImageView {
                 imageView.image = UIImage(named: imageName)
             } else if let button = view as? UIButton {
                 button.setImage(UIImage(named: imageName), for: .normal)
             }
        }
    }
}
