//
//  AsyncimageView.swift
//  ProductFetcher
//
//  Created by Macbook Pro on 20/04/2025.
//

import SwiftUI

struct AsyncimageView: View {
    let imageUrl:String
    
    var body: some View {
        if let url = URL(string: imageUrl){
            AsyncImage(url: url) { image in
                image.resizable()
            } placeholder: {
                ProductView()
            }
        }
    }
}

#Preview {
    AsyncimageView(imageUrl: Product.dummy.image)
}
