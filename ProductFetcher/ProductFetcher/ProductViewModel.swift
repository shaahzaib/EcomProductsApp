//
//  ProductViewModel.swift
//  ProductFetcher
//
//  Created by Macbook Pro on 18/04/2025.
//

import Foundation

@Observable class ProductViewModel {
    
    var products:[Product] = []
    
    private let manager = APIManager()
    
    func fetchProducts() async{
        
        do{
              products = try await manager.request(url: "https://fakestoreapi.com/products")
            
            print(products)
            
        }catch{
            print("Fetching error",error)
        }
        
        
    }
    
}
