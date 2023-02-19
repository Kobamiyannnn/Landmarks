//
//  ContentView.swift
//  Landmarks
//  
//  Created by Kobamiyannnn on 2023/02/12
//  
//  Abstract:
//  A view showing the list of landmarks.
//

import SwiftUI

/*
 The first structure (ContentView) conforms to the View protocol
 and describes the view's content and layout.
 */
struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

/*
 The second structure (ContentView_Previews) declares a preview for that view.
 */
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
