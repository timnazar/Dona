//
//  ViewDecorators+UITableView.swift
//
//
//  Created by Tim Nazar on 2/6/24.
//

import UIKit

public extension DonaViewDecorator {
    static func delegate(_ delegate: UITableViewDelegate) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.delegate = delegate
        }
    }

    static func dataSource(_ dataSource: UITableViewDataSource) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.dataSource = dataSource
        }
    }

    static func cell(_ cellClass: AnyClass, identifier: String) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.register(cellClass, forCellReuseIdentifier: identifier)
        }
    }

    static func header(_ headerClass: AnyClass, identifier: String) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.register(headerClass, forHeaderFooterViewReuseIdentifier: identifier)
        }
    }

    static func footer(_ footerClass: AnyClass, identifier: String) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.register(footerClass, forHeaderFooterViewReuseIdentifier: identifier)
        }
    }

    static func refreshControl(_ refreshControl: UIRefreshControl) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.refreshControl = refreshControl
        }
    }

    // MARK: - Scroll Indicator.
    static func verticalScrollIndicator(_ isShowing: Bool) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.showsVerticalScrollIndicator = isShowing
        }
    }

    static func horizontalScrollIndicator(_ isShowing: Bool) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.showsHorizontalScrollIndicator = isShowing
        }
    }

    // MARK: - Separator.
    static func separatorStyle(_ style: UITableViewCell.SeparatorStyle) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.separatorStyle = style
        }
    }

    // MARK: - Section.
    @available(iOS 15.0, *)
    static func sectionHeaderTopPadding(_ padding: CGFloat) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.sectionHeaderTopPadding = padding
        }
    }
}