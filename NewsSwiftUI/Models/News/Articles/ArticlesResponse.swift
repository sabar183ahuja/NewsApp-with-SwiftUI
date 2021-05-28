//
//  ArticlesResponse.swift
//  NewsSwiftUI
//
//  Created by Sabar Ahuja on 2021-04-03.
//

import Foundation

struct ArticlesResponse: Codable {
    let status: String
    let articles: Articles
}
