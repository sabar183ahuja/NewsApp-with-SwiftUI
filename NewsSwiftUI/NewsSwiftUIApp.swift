//
//  NewsSwiftUIApp.swift
//  NewsSwiftUI
//
//  Created by Sabar Ahuja on 2021-03-28.
//

import SwiftUI

@main
struct NewsSwiftUIApp: App {
    private let context = CoreDataManager.shared.managedObjectContext

    var body: some Scene {
        WindowGroup {
            TabView {
                MainView()
                    .tabItem {
                        Image(systemName: "globe")
                            .font(.system(size: 22))
                    }
                
                SourcesListView()
                    .tabItem {
                        Image(systemName: "list.bullet")
                            .font(.system(size: 22))
                    }
                
                SearchForArticlesView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 22))
                    }
                
                FavoritesView()
                    .environment(\.managedObjectContext, context)
                    .tabItem {
                        Image(systemName: "heart.fill")
                            .font(.system(size: 22))
                    }
                
            }
            .accentColor(.black)
        }
    }
}
