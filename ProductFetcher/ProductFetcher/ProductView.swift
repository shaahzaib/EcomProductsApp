//
//  ProductView.swift
//  ProductFetcher
//
//  Created by Macbook Pro on 19/04/2025.
//

import SwiftUI

struct ProductView: View {
    
    let viewModel = ProductViewModel()
    
    
    var body: some View {
        NavigationStack{
            List(viewModel.products) {product in
                
                NavigationLink {
                    ProductDetailsView(product: product)
                } label: {
                    ProductRowView(product: product)
                }
                .toolbarRole(.editor)
            }
            .listStyle(.plain)
            .navigationTitle("Products")
                 }
                .task {
                    await viewModel.fetchProducts()
                }
        
    }
}

#Preview {
    ProductView()
}
