//
//  Container.swift
//  NewsSwiftUI
//
//  Created by Sabar Ahuja on 2021-04-03.
//

import Foundation

class Container {
    static let jsonDecoder: JSONDecoder = JSONDecoder()
    
    static var weatherJSONDecoder: JSONDecoder = {
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .secondsSince1970
        return jsonDecoder
    }()
    
    /// News API key url: https://newsapi.org
    static let newsAPIKey: String = "0cbf79d8af6c4fe3913f58415b58ca17"
    
    /// Weather API key url: https://darksky.net
    static let weatherAPIKey: String = "1efa16c283e17bcef4ee090a4e9f8bd3"
}
