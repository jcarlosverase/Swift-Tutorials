//
//  AsyncImage.swift
//  ATDStore
//
//  Created by Juan Alberto Carlos Vera on 10/11/20.
//

import SwiftUI

struct AsyncImageView: View {
    @ObservedObject
    var imageLoader: ImageLoader
    
    init(imageUrl: String) {
        imageLoader = ImageLoader(urlString: imageUrl)
    }
    
    var body: some View {
        if imageLoader.data != nil {
            Image(uiImage: UIImage(data: imageLoader.data!)!)
                .resizable()
                .frame(width: 140, height: 100, alignment: .center)
                .aspectRatio(contentMode: .fit)
        }
    }
}
