//
//  AddProductView.swift
//  FinallyAPP
//
//  Created by Levan Gorjeladze on 07.01.23.
//

import SwiftUI

struct AddProductView: View {
    @EnvironmentObject var productsVM: ProductViewModel

    
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.C5
    @State private var descrioption: String = ""
    @State private var property: String = ""
    @State private var directions: String = ""
    @State private var navigateToProduct = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Name")){
                    TextField("Product Name", text: $name)
                }
                Section(header: Text("Category")){
                    Picker("Category",selection: $selectedCategory){
                        ForEach(Category.allCases){ category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                            
                    }.pickerStyle(.menu)
                }
                Section(header: Text("Descrioption")){
                    TextEditor(text: $descrioption)
                }
                Section(header: Text("Property")){
                    TextEditor(text: $property)
                }
                Section(header: Text("Directions")){
                    TextEditor(text: $directions)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                Button{
                    dismiss()
                } label: {
                    Label("Cancel", systemImage: "xmark")
                        .labelStyle(.iconOnly)
                }
            }
                ToolbarItem{
                NavigationLink(isActive: $navigateToProduct) {
                    ProductView(product: productsVM.products.sorted{$0.datePublished > $1.datePublished}[0])
                        .navigationBarBackButtonHidden(true) 
                } label: {
                Button{
                    saveProduct()
                    navigateToProduct = true
                } label: {
                        Label("Done", systemImage: "checkmark")
                            .labelStyle(.iconOnly)
                        }
                    }
                .disabled(name.isEmpty)
                }
            })
                
            .navigationBarTitle("New Product")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}
struct AddProductView_Previews: PreviewProvider {
    static var previews: some View {
        AddProductView()
            .environmentObject(ProductViewModel())
    }
}

extension AddProductView{
    private func saveProduct(){
        let now = Date()
         
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        
        let datePublished = dateFormatter.string(from: now)
        print(datePublished)
         
        let product = Product(name: name, image: "", description: descrioption, property: property, directions: directions, category: selectedCategory.rawValue, datePublished: datePublished, url:  "")
        productsVM.AddProduct(product: product)
    }
}
