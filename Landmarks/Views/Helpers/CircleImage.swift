//
//  CircleImage.swift
//  Landmarks
//  
//  Created by Kobamiyannnn on 2023/02/13
//  
//  Abstract:
//  A view that clips on image to a circle and adds a stroke and shadow.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
