//
//  CategoryView.swift
//  FinallyAPP
//
//  Created by Levan Gorjeladze on 06.01.23.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var productsVM: ProductViewModel
    var category: Category
    
    var products:[Product]{
        return productsVM.products.filter{ $0.category == category.rawValue}
    }
    var body: some View {
        ScrollView{
            ProductList(products: products)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.C1)
            .environmentObject(ProductViewModel())
    }
}
