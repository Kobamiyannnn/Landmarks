//
//  LandmarkDetail.swift
//  Landmarks
//  
//  Created by Kobamiyannnn on 2023/02/15
//  
//  Abstract:
//  A view showing the details for a landmark.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
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
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
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
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
