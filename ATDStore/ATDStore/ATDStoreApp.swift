//
//  ATDStoreApp.swift
//  ATDStore
//
//  Created by Juan Alberto Carlos Vera on 9/26/20.
//

import SwiftUI

@main
struct ATDStoreApp: App {
    var productListViewModel = ProductListViewModel()
    var body: some Scene {
        WindowGroup {
            ProductListView(viewModel: productListViewModel)
        }
    }
}
