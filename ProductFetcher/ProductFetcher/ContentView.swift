//
//  ContentView.swift
//  ProductFetcher
//
//  Created by Macbook Pro on 16/04/2025.
//

import SwiftUI

struct ContentView: View {
    var viewModel = ProductViewModel()
    
    var body: some View {
        ProductView()
    }
}

#Preview {
    ContentView()
}
