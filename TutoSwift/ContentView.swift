//
//  ContentView.swift
//  TutoSwift
//
//  Created by Gaetan Salvi on 08/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showingProfile = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                NavigationLink(
                    destination: IntroScreen()) {
                        NavigationButton(text: "Introduction")
                    }
                    .padding([.vertical], 6)
                
                NavigationLink(
                    destination: LandmarkList()) {
                        NavigationButton(text: "List and Navigation")
                    }
                    .padding([.vertical], 6)
                
                NavigationLink(
                    destination: HikeView()) {
                        NavigationButton(text: "Animations and transitions")
                    }
                    .padding([.vertical], 6)
                
                NavigationLink(
                destination: CategoryHome()) {
                    NavigationButton(text: "Complexe interfaces")
                }
                .padding([.vertical], 6)
                
                NavigationLink(
                destination: LandmarkScreen()) {
                    NavigationButton(text: "Landmarks screen")
                }
                .padding([.vertical], 6)
                
                Button {
                    showingProfile.toggle()
                } label: {
                    NavigationButton(text: "UI Controls")
                }
                .padding([.vertical], 6)
                
                Spacer()
            }
            .navigationTitle("SwiftUI tutorial")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
