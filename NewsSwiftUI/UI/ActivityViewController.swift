//
//  ActivityViewController.swift
//  NewsSwiftUI
//
//  Created by Sabar Ahuja on 02.02.2020.
//  Copyright © 2020 Sabar Ahuja. All rights reserved.
//

import SwiftUI
import UIKit

struct ActivityViewController: UIViewControllerRepresentable {
    let activityItems: [Any]
    let applicationActivities: [UIActivity]? = nil
    
    let excludedActivityTypes: [UIActivity.ActivityType]? = nil
    
    func makeUIViewController(context: Context) -> UIActivityViewController {
        let activityViewConrtoller = UIActivityViewController(
            activityItems: activityItems,
            applicationActivities: applicationActivities
        )
        
        activityViewConrtoller.excludedActivityTypes = excludedActivityTypes
        
        return activityViewConrtoller
    }
    
    func updateUIViewController(
        _ uiViewController: UIActivityViewController,
        context: Context
    ) {}
}
