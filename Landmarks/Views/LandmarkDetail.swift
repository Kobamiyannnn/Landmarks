//
//  LandmarkDetail.swift
//  Landmarks
//  
//  Created by Kobamiyannnn on 2023/02/15
//  
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top) // Allow the map content to extend to the top edge of the screen
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130) // Layer the image view on top of the map view.
                .padding(.bottom, -130)
            
            // Left-align this VStack by "alignment: .leading".
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding() // Padding top, bottom, left and right.
        }
        .navigationTitle(landmark.name) // Give the navigation bar a title when showing the detail view
        .navigationBarTitleDisplayMode(.inline) // Make the title appear inline
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
    }
}
