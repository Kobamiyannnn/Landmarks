//
//  ContentView.swift
//  Landmarks
//  
//  Created by Kobamiyannnn on 2023/02/12
//  
//

import SwiftUI

/*
 The first structure (ContentView) conforms to the View protocol
 and describes the view's content and layout.
 */
struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top) // Allow the map content to extend to the top edge of the screen
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130) // Layer the image view on top of the map view.
                .padding(.bottom, -130) 
            
            // Left-align this VStack by "alignment: .leading".
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding() // Padding top, bottom, left and right.
            
            Spacer() // Push the content to the top of the screen.
        }
    }
}

/*
 The second structure (ContentView_Previews) declares a preview for that view.
 */
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
