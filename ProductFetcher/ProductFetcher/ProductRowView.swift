//
//  ProductRowView.swift
//  ProductFetcher
//
//  Created by Macbook Pro on 19/04/2025.
//

import SwiftUI

struct ProductRowView: View {
    
     let product:Product
    
    var body: some View {
        if let url = URL(string: product.image)
        {
            HStack(spacing: 8){
                //image
                productImage(url: url)
        
                VStack(alignment: .leading){
                    //title
                    Text(product.title)
                        .font(.headline)
                        .lineLimit(2)
                    
                    //category and review
                    HStack{
                        Text(product.category)
                            .font(.subheadline)
                            
                      
                        Spacer()
                        
                        HStack{
                            Image(systemName: "star.fill")
                            Text(product.rating.rate.toString())
                        }
                        .fontWeight(.medium)
                        .foregroundStyle(.yellow )
                        
                    }
                    
                    Text(product.description)
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                        .lineLimit(3)
                    
                    //price and buy button
                    HStack{
                        
                        Text("$"+"\(product.price)")
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Text("Buy")
                                .foregroundColor(.white)
                                .padding(.horizontal)
                                .padding(.vertical,8)
                                .background(.indigo)
                                .clipShape(.capsule)
                        }

                        
                    }
                    
                    
                  //outer vstack
                }
                
                
                
                
                
                
                //outer hstack
            }.padding()
        }
    }
    
    // to get image url
    func productImage(url: URL)-> some View{
        AsyncImage(url: url) { image in
            image.resizable()
                .scaledToFit()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 100,height: 100)

    }
    
    
}


// to reduce decimal digits after decimal point in rating
extension Double{
    func toString() -> String{
        return String(format: "%.1f",self)
    }
}


#Preview {
    ProductRowView(product: Product.dummy)
}
