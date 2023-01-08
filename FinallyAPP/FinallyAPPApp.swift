//
//  FinallyAPPApp.swift
//  FinallyAPP
//
//  Created by Levan Gorjeladze on 05.01.23.
//

import SwiftUI

@main
struct FinallyAPPApp: App {
    @StateObject var productsViewModel = ProductViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(productsViewModel)
        }
    }
}
