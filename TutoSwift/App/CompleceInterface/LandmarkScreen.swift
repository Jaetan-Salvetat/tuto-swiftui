//
//  LandmarkScreen.swift
//  TutoSwift
//
//  Created by Gaetan Salvi on 17/02/2023.
//

import SwiftUI

struct LandmarkScreen: View {
    @State private var selection: Tab = .featured

    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)

            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct LandmarkScreen_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkScreen()
            .environmentObject(ModelData())
    }
}
