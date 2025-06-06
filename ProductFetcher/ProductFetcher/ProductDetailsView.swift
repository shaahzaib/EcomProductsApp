//
//  ProductDetailsView.swift
//  ProductFetcher
//
//  Created by Macbook Pro on 20/04/2025.
//

import SwiftUI

struct ProductDetailsView: View {
    let product:Product
    var body: some View {
        VStack(spacing: 16){
            AsyncimageView(imageUrl: product.image)
                .scaledToFit()
                .frame(height: 300)
            
            Text(product.title)
                .font(.headline)
            
            Text(product.description)
                .font(.footnote)
                .foregroundStyle(.secondary)
            
            
            RatingView(rating: product.rating.rate.toString() )
            
            Spacer()
            //pricing
            HStack{
                VStack{
                    
                    Text("Total Price")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Text("$"+product.price.formatted())
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundStyle(.indigo)
                }.padding(.leading)
                Spacer()
                
                //buy add to cart\\
                
                HStack{
                    
                    Image(systemName: "cart.fill.badge.plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30,height: 30  )
                    
                    Text("Buy Now")
                        .font(.headline)
                        .fontWeight(.bold)
                        .frame(width:100)
                    
                    
                    
                }.padding(.horizontal )
                    .foregroundStyle(.white)
                    .frame(height: 50)
                    .background(
RoundedRectangle(cornerRadius: 15)
                        
                        .fill(
                            LinearGradient(
                                gradient: Gradient(stops: [
                                        Gradient.Stop(
                                            color: .indigo,location: 0.35
                                        ),
                                        Gradient.Stop(color: .indigo,location: 0.1),
                                        Gradient.Stop(color: .black.opacity(0.7),location:0.1),
                                        Gradient.Stop(color: .black.opacity(0.6),location:0.65)
                                ]),
                                startPoint: .leading,
                                endPoint: .trailing)))
                
            }.padding(.trailing)
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .background(.gray.opacity(0.2))
                .clipShape(.buttonBorder)
            
            
        // outer vstack
        }
        .padding()
    }
    
    
    
}

#Preview {
    ProductDetailsView(product: Product.dummy)
}


struct RatingView:View {
    
    let rating:String
    
    var body: some View {
        HStack{
            
            HStack{
                
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
                Text(rating + " Ratings")
                    .foregroundStyle(.secondary)
                    
            }
            
            Spacer()
            circleImage
            Text("4.6k Reviews")
            Spacer()
            circleImage
            Text("4.4k Sold")
            //outer hstack
        }
        .font(.callout)
        .foregroundStyle(.secondary)
        
    }
    var circleImage:some View{
        Image(systemName: "circle.fill")
            .resizable()
            .frame(width: 8,height: 8)
        
    }
}
