//
//  ProductRowView.swift
//  ATDStore
//
//  Created by Juan Alberto Carlos Vera on 9/26/20.
//

import SwiftUI

struct ProductItemView: View {
    var viewModel: ProductViewModel
    
    var body: some View {
        HStack {
            AsyncImageView(imageUrl: viewModel.image)
            VStack(alignment: .leading) {
                Text(viewModel.title).font(.headline).foregroundColor(.gray)
                Spacer().frame(height: 15)
                Text(viewModel.price).font(.title)
            }
        }
    }
}

struct ProductItemView_Previews: PreviewProvider {
    @State static var product = Product(
        _id: "5f7209b37bc82fc8c2fb20aa",
        asin: "B07SFZX5CH",
        title: "Marvel\'s Avengers for PlayStation 4",
        price: Price(current_price: 59.99, currency: "USD"),
        thumbnail: "https://m.media-amazon.com/images/I/81DugevkxJL._AC_UL320_.jpg")
    
    @State static var productViewModel = ProductViewModel(product)
    static var previews: some View {
        ProductItemView(viewModel: productViewModel)
    }
}
