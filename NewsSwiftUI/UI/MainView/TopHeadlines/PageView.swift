//
//  PageView.swift
//  NewsSwiftUI
//
//  Created by Sabar Ahuja on 2021-04-04.
//

import SwiftUI


struct PageView<Page: View>: View {
    private let viewControllers: [UIHostingController<Page>]
    
    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }
    
    var body: some View {
        PageViewController(controllers: viewControllers)
    }
}
