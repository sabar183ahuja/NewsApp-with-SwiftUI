//
//  SourceRow.swift
//  SwiftUI Demo
//
//  Created by Sabar Ahuja on 2021-04-08.
//

import SwiftUI

struct SourceRow : View {
    let source: Source
    
    var body: some View {
        HStack {
            Text(source.name)
        }
    }
}
