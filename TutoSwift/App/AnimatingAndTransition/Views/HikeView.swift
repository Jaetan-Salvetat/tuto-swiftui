//
//  HikeView.swift
//  TutoSwift
//
//  Created by Gaetan Salvi on 17/02/2023.
//

import SwiftUI

struct HikeView: View {
    var hike = HikeModelData().hikes[0]
    @State private var showDetail = false
    @StateObject var viewModel = HikeModelData()

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    viewModel.animationType = .fade
                } label: {
                    NavigationButton(text: "Fade")
                        .foregroundColor(viewModel.animationType == .fade ? .blue : nil)
                }
                Spacer()
                Button {
                    viewModel.animationType = .slide
                } label: {
                    NavigationButton(text: "Slide")
                        .foregroundColor(viewModel.animationType == .slide ? .blue : nil)
                }
                Spacer()
            }
            
            Spacer()
            
            HStack {
                HikeGraph(hike: hike, path: \.elevation)
                    .frame(width: 50, height: 30)

                VStack(alignment: .leading) {
                    Text(hike.name)
                        .font(.headline)
                    Text(hike.distanceText)
                }

                Spacer()

                Button {
                    withAnimation(/*.easeInOut(duration: 0.3)*/) {
                        showDetail.toggle()
                    }
                } label: {
                    Label("Graph", systemImage: "chevron.right.circle")
                        .labelStyle(.iconOnly)
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? 90 : 0))
                        .scaleEffect(showDetail ? 1.5 : 1)
                        .padding()
                        .animation(.easeInOut, value: showDetail)
                }
            }

            if viewModel.animationType == .slide && showDetail {
                HikeDetail(hike: hike)
                    .transition(.slide)
            } else if viewModel.animationType != .slide && showDetail {
                HikeDetail(hike: hike)
            }
            
            Spacer()
        }
    }
}


extension AnyTransition {
    static var moveAndFade: AnyTransition {
        AnyTransition.slide
    }
}

struct HikeView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HikeView()
        }
    }
}
