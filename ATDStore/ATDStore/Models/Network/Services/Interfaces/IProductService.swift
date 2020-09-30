//
//  IProductService.swift
//  ATDStore
//
//  Created by Juan Alberto Carlos Vera on 9/26/20.
//

import Combine

protocol IProductService {
    // MARK: Product
    func findProducts(byTitle title: String) -> AnyPublisher<ProductListResponse, Error>

    // MARK: Product details
    func getProduct(byId id: String) -> AnyPublisher<ProductDetailsResponse, Error>
}
