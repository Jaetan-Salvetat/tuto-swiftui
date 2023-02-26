//
//  PageView.swift
//  TutoSwift
//
//  Created by Gaetan Salvi on 17/02/2023.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @EnvironmentObject var modelData: ModelData

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $modelData.currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $modelData.currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
        .aspectRatio(3 / 2, contentMode: .fit)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
            .environmentObject(ModelData())
    }
}
