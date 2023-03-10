//
//  HikeView.swift
//  TutoSwift
//
//  Created by Gaetan Salvi on 17/02/2023.
//

import SwiftUI

struct HikeView: View {
    var hike = ModelData().hikes[0]
    @State private var showDetail = false
    @EnvironmentObject var viewModel: ModelData

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    viewModel.hikeScreenAnimationType = .fade
                } label: {
                    NavigationButton(text: "Fade")
                        .foregroundColor(viewModel.hikeScreenAnimationType == .fade ? .blue : nil)
                }
                Spacer()
                Button {
                    viewModel.hikeScreenAnimationType = .slide
                } label: {
                    NavigationButton(text: "Slide")
                        .foregroundColor(viewModel.hikeScreenAnimationType == .slide ? .blue : nil)
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

            if viewModel.hikeScreenAnimationType == .slide && showDetail {
                HikeDetail(hike: hike)
                    .transition(.slide)
            } else if viewModel.hikeScreenAnimationType != .slide && showDetail {
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
                .environmentObject(ModelData())
        }
    }
}
