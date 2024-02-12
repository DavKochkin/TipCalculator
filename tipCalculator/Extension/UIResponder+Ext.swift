//
//  UIResponder+Ext.swift
//  tipCalculator
//
//  Created by David Kochkin on 12.02.2024.
//

import UIKit

extension UIResponder {
    var parentViewController: UIViewController? {
        return next as? UIViewController ?? next?.parentViewController
    }
}
