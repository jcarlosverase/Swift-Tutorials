//
//  ProductViewModel.swift
//  ATDStore
//
//  Created by Juan Alberto Carlos Vera on 9/26/20.
//

import Combine

class ProductListViewModel: ObservableObject {
    
    private let productService = ProductService()
    
    @Published
    var productViewModels = [ProductViewModel]()
    
    var cancellable: AnyCancellable?
    
    func findProducts(byTitle title: String) {
        cancellable = productService.findProducts(byTitle: title)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error): print("Error \(error)")
                case .finished: print("Publisher is finished")
                }
            },receiveValue: { productListResponse in
                self.productViewModels = productListResponse.products.map {
                    ProductViewModel($0)
                }
                print(self.productViewModels)
            })
    }
}

