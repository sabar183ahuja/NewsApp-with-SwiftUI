//
//  SourcesListViewModel.swift
//  NewsSwiftUI
//
//  Created by Sabar Ahuja on 2021-04-08.
//

import SwiftUI
import Combine

final class SourcesListViewModel: ObservableObject {
    private let apiProvider = APIProvider<ArticleEndpoint>()
    
    private var bag = Set<AnyCancellable>()
    
    @Published private(set) var sources: Sources = []
    
    func getSources() {
        apiProvider.getData(from: .getSources)
            .decode(type: SourcesResponse.self, decoder: Container.jsonDecoder)
            .map { $0.sources }
            .replaceError(with: [])
            .receive(on: RunLoop.main)
            .assign(to: \.sources, on: self)
            .store(in: &bag)
    }
}
