//
//  LandmarkList.swift
//  Landmarks
//  
//  Created by Kobamiyannnn on 2023/02/15
//  
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            // Struct of Landmark is Identifiable compliant, eliminating the need for the id parameter (id: \.id)
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 14 Pro"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
