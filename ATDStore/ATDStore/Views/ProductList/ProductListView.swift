//
//  ProductView.swift
//  ATDStore
//
//  Created by Juan Alberto Carlos Vera on 9/26/20.
//

import SwiftUI

struct ProductListState {
    var service: ProductService
    var products: [Product]
}

struct ProductListView: View {
    
    private let viewModel = ProductListViewModel()
    
    var body: some View {
        Text("Welcome to Store!")
            .onAppear() {
                self.viewModel.findProducts(byTitle: "iphone")
            }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView()
    }
}
