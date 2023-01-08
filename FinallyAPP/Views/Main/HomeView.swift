//
//  HomeView.swift
//  FinallyAPP
//
//  Created by Levan Gorjeladze on 05.01.23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var productsVM: ProductViewModel
    
    var body: some View {
        NavigationView {
            ScrollView{
                ProductList(products: productsVM.products)
            }
            .navigationTitle("My Products")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ProductViewModel())
    }
}
