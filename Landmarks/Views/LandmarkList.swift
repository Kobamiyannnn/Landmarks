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
        // Struct of Landmark is Identifiable compliant, eliminating the need for the id parameter (id: \.id)
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
