//
//  ProductCard.swift
//  FinallyAPP
//
//  Created by Levan Gorjeladze on 05.01.23.
//

import SwiftUI

struct ProductCard: View {
    var product: Product
    
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: product.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(alignment: .bottom){
                        Text(product.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black , radius: 3, x: 0 , y: 10)
                            .frame(maxWidth: 136)
                            .padding()
                        
                    }
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40 , height: 40, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                    .overlay(alignment: .bottom){
                    Text(product.name)
                    .font(.headline)
                    .foregroundColor(.white)
                    .shadow(color: .black , radius: 3, x: 0 , y: 0)
                    .frame(maxWidth: 136)
                    .padding()
        }
    }
}
        .frame(maxWidth: 160,maxHeight: 217,alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3),radius: 15, x: 0 , y: 10)
    }
}
    
    struct ProductCard_Previews: PreviewProvider {
        static var previews: some View {
            ProductCard(product: Product.all[0])
        }
    }
