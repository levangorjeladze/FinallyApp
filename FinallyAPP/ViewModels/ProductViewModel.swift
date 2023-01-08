//
//  ProductViewModel.swift
//  FinallyAPP
//
//  Created by Levan Gorjeladze on 07.01.23.
//

import Foundation

class ProductViewModel: ObservableObject{
    @Published private(set) var products: [Product] = []
    
    init(){
        products = Product.all 
    }
    func AddProduct(product: Product){
        products.append(product)
    }
}
