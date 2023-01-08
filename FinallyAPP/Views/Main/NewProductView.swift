//
//  NewProductView.swift
//  FinallyAPP
//
//  Created by Levan Gorjeladze on 05.01.23.
//

import SwiftUI

struct NewProductView: View {
    @State private var showAddProduct = false
    var body: some View {
        NavigationView {
            Button("Add Product Manually" ){
                showAddProduct = true
            }
            .navigationTitle("New Product")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddProduct){
            AddProductView()
        }
    }
}

struct NewProductView_Previews: PreviewProvider {
    static var previews: some View {
        NewProductView()
    }
}
