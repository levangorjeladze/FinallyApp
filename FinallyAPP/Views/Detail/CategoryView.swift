//
//  CategoryView.swift
//  FinallyAPP
//
//  Created by Levan Gorjeladze on 06.01.23.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
//    //computed property
//    var product: [Product]{
//        return Product.all.filter{ $0.category == category.rawValue}
//    }
    var body: some View {
        ScrollView{
            ProductList(products: Product.all.filter{ $0.category == category.rawValue})
        }
        navigationTitle(category.rawValue + " s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.category_7)
    }
}
