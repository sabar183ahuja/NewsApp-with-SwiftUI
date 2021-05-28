//
//  TopHeadlinesView.swift
//  NewsSwiftUI
//
//  Created by Sabar Ahuja on 2021-04-04.
//

import SwiftUI

struct TopHeadlinesView : View {
    let topHeadlines: Articles
    
    var body: some View {
        PageView(topHeadlines.map { TopHeadlineRow(article: $0) })
    }
}
