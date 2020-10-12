//
//  ImageViewModel.swift
//  ATDStore
//
//  Created by Juan Alberto Carlos Vera on 10/4/20.
//

import Foundation
import Combine

class ImageLoader: ObservableObject {
    
    private let imageService = ImageService()
    
    @Published
    var data: Data?
    var cancellable: AnyCancellable?
    
    init(urlString: String) {
        guard let url = URL(string: urlString) else { return }
        cancellable = imageService.loadFromURL(url: url)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error): print("Error \(error)")
                case .finished: print("Publisher is finished")
                }
            },receiveValue: { data in
                self.data = data
            })
    }
}
