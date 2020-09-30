//
//  Product.swift
//  ATDStore
//
//  Created by Juan Alberto Carlos Vera on 9/26/20.
//

struct Product: Decodable {
    let _id: String
    let asin: String
    let title: String
    let price: Price
    let thumbnail: String
}

struct Price: Decodable {
    let current_price: Double
    let currency: String
}
