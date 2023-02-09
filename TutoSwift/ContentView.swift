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
            NavigationLink(
                destination: IntroScreen()) {
                    Text("Introduction")
                }
        }
        .navigationTitle("SwiftUI exercices")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
