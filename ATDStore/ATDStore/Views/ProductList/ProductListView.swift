//
//  ProductView.swift
//  ATDStore
//
//  Created by Juan Alberto Carlos Vera on 9/26/20.
//

import SwiftUI

struct ProductListView: View {
    @ObservedObject
    var viewModel: ProductListViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.productViewModels, id: \.self) { productViewModel in
                ProductItemView(viewModel: productViewModel)
            }.onAppear {
                self.viewModel.findProducts(byTitle: "macbook")
            }.navigationBarTitle("Product list")
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    @State static var productListViewModel = ProductListViewModel()
    
    static var previews: some View {
        ProductListView(viewModel: productListViewModel)
    }
}
