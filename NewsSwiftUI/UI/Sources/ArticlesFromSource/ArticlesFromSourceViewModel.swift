//
//  ArticlesFromSourceViewModel.swift
//  NewsSwiftUI
//
//  Created by Sabar Ahuja on 2021-04-09.
//

import SwiftUI
import Combine

final class ArticlesFromSourceViewModel: ObservableObject {
    private let apiProvider = APIProvider<ArticleEndpoint>()
    
    private var bag = Set<AnyCancellable>()
    
    @Published private(set) var articles: Articles = []
    
    func getArticles(from source: String) {
        apiProvider.getData(from: .getArticlesFromSource(source))
            .decode(type: ArticlesResponse.self, decoder: Container.jsonDecoder)
            .map { $0.articles }
            .replaceError(with: [])
            .receive(on: RunLoop.main)
            .assign(to: \.articles, on: self)
            .store(in: &bag)
    }
}
