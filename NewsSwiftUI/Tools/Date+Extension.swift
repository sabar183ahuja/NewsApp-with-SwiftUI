//
//  Date+Extension.swift
//  NewsSwiftUI
//
//  Created by Sabar Ahuja on 2021-04-03.
//

import Foundation

extension Date {
    func hour() -> String {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "HH:mm"
        dateFormatter.locale = Locale.current
        
        return dateFormatter.string(from: self)
    }
    
    func day() -> String {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "EEEE"
        dateFormatter.locale = Locale.current
        
        return dateFormatter.string(from: self)
    }
}
