//
//  ProductDetailsResponse.swift
//  ATDStore
//
//  Created by Juan Alberto Carlos Vera on 9/27/20.
//

struct ProductDetailsResponse: Decodable {
    let status: Int
    let message: String
    let product: Product
}
