//
//  SearchForArticlesView.swift
//  NewsSwiftUI
//
//  Created by Sabar Ahuja on 2021-03-28.
//  Copyright © 2019 Sabar Ahuja. All rights reserved.
//

import SwiftUI

struct SearchForArticlesView : View {
    @ObservedObject var viewModel = SearchForArticlesViewModel()
    
    var body: some View {
        NavigationView(content: {
            VStack {
                SearchBarView(text: $viewModel.searchText)
                    .padding([.leading, .trailing], 8)
                
                ArticlesList(articles: viewModel.articles)
            }
            .navigationBarTitle(Text(Constants.title), displayMode: .large)
        })
    }
}

private extension SearchForArticlesView {
    
    struct Constants {
        static let title = "Search".localized()
    }
}

