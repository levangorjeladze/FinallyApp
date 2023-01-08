//
//  ProductView.swift
//  FinallyAPP
//
//  Created by Levan Gorjeladze on 06.01.23.
//

import SwiftUI

struct ProductView: View {
    var product: Product
    
    var body: some View {
        ScrollView{
            AsyncImage(url: URL(string: product.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100 , height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
            }
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            VStack(spacing: 30){
                Text(product.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                VStack(alignment: .leading, spacing: 30){
                    if !product.description.isEmpty{
                        Text(product.description)
                    }
                    if !product.property.isEmpty{
                        VStack(alignment: .leading, spacing: 20){
                            Text("About Product")
                                .font(.headline)
                            
                            Text(product.property)
                        }
                    }
                    if !product.directions.isEmpty{
                        VStack(alignment: .leading, spacing: 20){
                            Text("Main Information")
                                .font(.headline)
                            
                            Text(product.directions)
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea(.container,edges: .top)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(product: Product.all[0])
    }
}
