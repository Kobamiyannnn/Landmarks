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
    var body: some View {
        LandmarkList()
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
