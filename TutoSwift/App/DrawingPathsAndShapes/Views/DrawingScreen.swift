//
//  DrawingScreen.swift
//  TutoSwift
//
//  Created by Gaetan Salvi on 15/02/2023.
//

import SwiftUI

struct DrawingScreen: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                NavigationLink(destination: BadgeBackground()) {
                    NavigationButton(text: "Badge background")
                }
                NavigationLink(destination: BadgeSymbol()) {
                    NavigationButton(text: "Badge synbol")
                }
                NavigationLink(destination: RotatedBadgeSymbol(angle: Angle(degrees: 5))) {
                    NavigationButton(text: "Rotatted badge synbol")
                }
                NavigationLink(destination: Badge()) {
                    NavigationButton(text: "Badge")
                }
            }
        }
    }
}

struct DrawingScreen_Previews: PreviewProvider {
    static var previews: some View {
        DrawingScreen()
    }
}
