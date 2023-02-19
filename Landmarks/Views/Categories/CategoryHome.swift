//
//  CategoryHome.swift
//  Landmarks
//  
//  Created by Kobamiyannnn on 2023/02/19
//  
//  Abstract:
//  A view showing featured landmarks above a list of landmarks grouped by category.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                // Set the edge insets to zero on landmark preview
                // so the content can extend to the edges of the display.
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
                // Set the edge insets to zero on landmark preview
                // so the content can extend to the edges of the display.
            }
            .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
