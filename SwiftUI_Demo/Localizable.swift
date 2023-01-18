//
//  Localizable.swift
//  SwiftUI_Demo
//
//  Created by Вилфриэд Оди on 16.01.2023.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
