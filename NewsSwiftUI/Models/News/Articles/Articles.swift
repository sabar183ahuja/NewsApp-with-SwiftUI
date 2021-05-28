//
//  Articles.swift
//  NewsSwiftUI
//
//  Created by Sabar Ahuja on 2021-04-03.
//

import Foundation

typealias Articles = [Article]

struct Article: Codable, Hashable {
    let source: ArticleSource?
    let author: String?
    let title: String?
    let description: String?
    let url: URL
    let urlToImage: String?
}
