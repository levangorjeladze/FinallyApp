//
//  FavoritesView.swift
//  FinallyAPP
//
//  Created by Levan Gorjeladze on 05.01.23.
//

import SwiftUI

struct FavoritesView: View {
    private var categoryData = CategoryData
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            List{
                ForEach(category, id: \.self){ category in
                    HStack{
                        Text(category.capitalized)
                        Spacer()
                        Image(systemName: "list.clipboard")
                            .foregroundColor(.blue)
                    }
                    .padding()
                }
            }
                .searchable(text: $searchText)
                .navigationTitle("Favorites")
        }
        .navigationViewStyle(.stack)
    }
    var category:[String]{
        let lcCategory = categoryData.map {$0.lowercased() }
        return searchText == "" ? lcCategory : lcCategory.filter{
            $0.contains(searchText.lowercased())
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
