//
//  Sources.swift
//  NewsSwiftUI
//
//  Created by Sabar Ahuja on 2021-04-03.
//

import Foundation

typealias Sources = [Source]

struct Source: Codable, Hashable {
    let id: String
    let name: String
    let description: String?
    let url: URL
    let category: String
    let language: String
    let country: String
}
