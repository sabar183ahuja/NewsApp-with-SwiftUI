//
//  WeatherEndpoint.swift
//  NewsSwiftUI
//
//  Created by Sabar Ahuja on 30.09.2019.
//  Copyright © 2019 Sabar Ahuja. All rights reserved.
//

import Foundation

enum WeatherEndpoint: EndpointProtocol {
    case getCurrentWeather(latitude: Double, longitude: Double)
    
    var baseURL: String {
        return "https://api.darksky.net"
    }
    
    var absoluteURL: String {
        switch self {
        case let .getCurrentWeather(latitude, longitude):
            return baseURL + "/forecast/\(Container.weatherAPIKey)/\(latitude),\(longitude)"
        }
    }
    
    var params: [String : String] {
        switch self {
        case .getCurrentWeather:
            return ["lang": locale]
        }
    }
    
    var headers: [String : String] {
        return [
            "Content-type": "application/json",
            "Accept": "application/json"
        ]
    }
}
