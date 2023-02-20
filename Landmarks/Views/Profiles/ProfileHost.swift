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
    @State private var draftProfile = Profile.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: draftProfile)
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
