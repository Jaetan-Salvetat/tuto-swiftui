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
                NavigationLink(
                    destination: HikeView()) {
                        NavigationButton(text: "Animations and transitions")
                    }
                NavigationLink(
                destination: CategoryHome()) {
                    NavigationButton(text: "Complexe interfaces")
                }
                NavigationLink(
                destination: LandmarkScreen()) {
                    NavigationButton(text: "Landmarks screen")
                }
                Spacer()
            }
            .navigationTitle("SwiftUI tutorial")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
