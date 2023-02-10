//
//  ContentView.swift
//  TutoSwift
//
//  Created by Gaetan Salvi on 08/02/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                NavigationLink(
                    destination: IntroScreen()) {
                        NavigationButton(text: "Introduction")
                    }
                NavigationLink(
                    destination: LandmarkList()) {
                        NavigationButton(text: "List and Navigation")
                    }
                Spacer()
            }
            .navigationTitle("SwiftUI tutorial")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

private struct NavigationButton: View {
    @Environment(\.colorScheme) var colorScheme
    var text: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(text)
                .tint(colorScheme == .dark ? .white : .black)
            Spacer()
        }
        .padding(.vertical, 10)
        .background(.gray.opacity(0.3))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding(.horizontal, 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
