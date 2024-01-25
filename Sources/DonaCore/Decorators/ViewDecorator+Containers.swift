//
//  File.swift
//  
//
//  Created by Tim Nazar on 7/17/23.
//

import UIKit

public extension DonaViewDecorator {
    static func contentInset(_ insets: UIEdgeInsets) -> DonaViewDecorator<View> {
        DonaViewDecorator<View> { view in
            if let stackView = view as? UIStackView {
                stackView.isLayoutMarginsRelativeArrangement = true
                stackView.layoutMargins = insets
            } else if let tableView = view as? UITableView {
                tableView.contentInset = insets
            } else if let collectionView = view as? UICollectionView {
                collectionView.contentInset = insets
            }
            // TODO: handle insets for UITextField and UIButton
        }
    }
}
