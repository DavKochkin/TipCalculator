//
//  Double+Ext.swift
//  tipCalculator
//
//  Created by David Kochkin on 13.02.2024.
//

import Foundation

extension Double {
    var currencyFormatted: String {
        var isWholeNumber: Bool {
            isZero ? true: !isNormal ? false: self == rounded()
        }
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = isWholeNumber ? 0 : 2
        formatter.locale = Locale(identifier: "en_US")
        return formatter.string(for: self) ?? ""
    }
}
