//
//  ArticlesFromCategoryViewModel.swift
//  NewsSwiftUI
//
//  Created by Sabar Ahuja on 2021-04-04.
//

import SwiftUI
import Combine

final class ArticlesFromCategoryViewModel: ObservableObject {
    private let apiProvider = APIProvider<ArticleEndpoint>()
    
    private var bag = Set<AnyCancellable>()
    
    @Published private(set) var articles: Articles = []
    
    func getArticles(from category: String) {
        apiProvider.getData(from: ArticleEndpoint.getArticlesFromCategory(category))
            .decode(type: ArticlesResponse.self, decoder: Container.jsonDecoder)
            .map { $0.articles }
            .replaceError(with: [])
            .receive(on: RunLoop.main)
            .assign(to: \.articles, on: self)
            .store(in: &bag)
    }
}

