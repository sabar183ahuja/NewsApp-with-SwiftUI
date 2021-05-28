//
//  EndpointProtocol.swift
//  NewsSwiftUI
//
//  Created by Sabar Ahuja on 30.09.2019.
//  Copyright © 2019 Sabar Ahuja. All rights reserved.
//

import Foundation

protocol EndpointProtocol {
    var locale: String { get }
    
    var region: String { get }
    
    var baseURL: String { get }
    
    var absoluteURL: String { get }
    
    var params: [String: String] { get }
    
    var headers: [String: String] { get }
}

extension EndpointProtocol {
    var locale: String {
        return Locale.current.languageCode ?? "en"
    }
    
    var region: String {
        return Locale.current.regionCode ?? "us"
    }
}
