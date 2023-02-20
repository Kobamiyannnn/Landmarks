//
//  ProfileHost.swift
//  Landmarks
//  
//  Created by Kobamiyannnn on 2023/02/20
//  
//  Abstract:
//  A view that hosts the profile viewer and editor.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode // Add an Environment view property that keys off of the environment's \.editMode
    @EnvironmentObject var modelData: ModelData
    @State private var draftProfile = Profile.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                EditButton()
            }
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
            }
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData()) // Without the modifier, the preview fails.
    }
}
