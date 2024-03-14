//
//  ViewDecorator+UITableView.swift
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
    
    static func separatorInset(_ separatorInset: UIEdgeInsets) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.separatorInset = separatorInset
        }
    }

    // MARK: - Section.
    @available(iOS 15.0, *)
    static func sectionHeaderTopPadding(_ padding: CGFloat) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.sectionHeaderTopPadding = padding
        }
    }

    static func allowsMultipleSelection(_ allowsMultipleSelection: Bool) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.allowsMultipleSelection = allowsMultipleSelection
        }
    }

    static func tableHeaderView(_ tableHeaderView: UIView) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.tableHeaderView = tableHeaderView
        }
    }

    static func isScrollEnabled(_ isScrollEnabled: Bool) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.isScrollEnabled = isScrollEnabled
        }
    }

    static func estimatedRowHeight(_ estimatedRowHeight: CGFloat) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.estimatedRowHeight = estimatedRowHeight
        }
    }

    static func rowHeight(_ rowHeight: CGFloat) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.rowHeight = rowHeight
        }
    }

    static func sectionHeaderHeight(_ sectionHeaderHeight: CGFloat) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.sectionHeaderHeight = sectionHeaderHeight
        }
    }

    static func tableFooterView(_ tableFooterView: UIView) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.tableFooterView = tableFooterView
        }
    }

    static func keyboardDismissMode(_ keyboardDismissMode: UITableView.KeyboardDismissMode) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.keyboardDismissMode = keyboardDismissMode
        }
    }

    static func bounces(_ bounces: Bool) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.bounces = bounces
        }
    }

    static func allowsSelection(_ allowsSelection: Bool) -> DonaViewDecorator<UITableView> {
        DonaViewDecorator<UITableView> {
            $0.allowsSelection = allowsSelection
        }
    }
}
