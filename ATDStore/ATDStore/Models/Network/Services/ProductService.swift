//
//  ProductService.swift
//  ATDStore
//
//  Created by Juan Alberto Carlos Vera on 9/26/20.
//

import Foundation
import Combine

class ProductService: StoreService, IProductService {
    
    func findProducts(byTitle title: String) -> AnyPublisher<ProductListResponse, Error> {
        let request = makeProductFindRequest(byTitle: title)
        return URLSession.shared.dataTaskPublisher(for: request)
            .map { $0.data }
            .decode(type: ProductListResponse.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
    func getProduct(byId id: String) -> AnyPublisher<ProductDetailsResponse, Error> {
        let request = makeProductDetailsRequest(byId: id)
        return URLSession.shared.dataTaskPublisher(for: request)
            .map { $0.data }
            .decode(type: ProductDetailsResponse.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
