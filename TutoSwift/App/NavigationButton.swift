//
//  NavigationButton.swift
//  TutoSwift
//
//  Created by Gaetan Salvi on 15/02/2023.
//

import SwiftUI

struct NavigationButton: View {
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

struct NavigationButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButton(text: "Mon text")
    }
}
