//
//  ProductViewModel.swift
//  ATDStore
//
//  Created by Juan Alberto Carlos Vera on 9/27/20.
//

struct ProductViewModel: Hashable {
    private let product: Product
    
    var id: String {
        return product._id
    }
    var title: String {
        return product.title
    }
    var price: String {
        return "\(product.price.currency) \(product.price.current_price)"
    }
    var image: String {
        return product.thumbnail
    }
    
    init(_ product: Product) {
        self.product = product
    }
}
