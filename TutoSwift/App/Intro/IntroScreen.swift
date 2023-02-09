//
//  IntroScreen.swift
//  TutoSwift
//
//  Created by Gaetan Salvi on 08/02/2023.
//

import SwiftUI

struct IntroScreen: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)

                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()

            Spacer()
        }
    }
}

struct IntroScreen_Previews: PreviewProvider {
    static var previews: some View {
        IntroScreen()
    }
}
