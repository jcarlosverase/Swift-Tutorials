//
//  ImageService.swift
//  ATDStore
//
//  Created by Juan Alberto Carlos Vera on 10/4/20.
//

import Foundation
import Combine

class ImageService {
    
    func loadFromURL(url: URL) -> AnyPublisher<Data, URLError> {
        return URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
