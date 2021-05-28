//
//  String+Extension.swift
//  NewsSwiftUI
//
//  Created by Sabar Ahuja on 2021-04-03.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return prefix(1).uppercased() + dropFirst()
    }
    
    func localized() -> String {
        return NSLocalizedString(self, comment: "")
    }
}
