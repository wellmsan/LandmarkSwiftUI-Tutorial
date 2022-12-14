//
//  SwiftUiExampleApp.swift
//  SwiftUiExample
//
//  Created by Welber Macedo on 06/08/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
