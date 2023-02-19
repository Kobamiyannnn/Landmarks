//
//  RotatedBadgeSymbol.swift
//  Landmarks
//  
//  Created by Kobamiyannnn on 2023/02/19
//  
//  Abstract:
//  A view that displays a rotated version of a badge symbol.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
