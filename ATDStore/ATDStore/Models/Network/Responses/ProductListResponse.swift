//
//  ProductResponse.swift
//  ATDStore
//
//  Created by Juan Alberto Carlos Vera on 9/26/20.
//

struct ProductListResponse: Decodable {
    let status: Int
    let message: String
    let products: [Product]
}
