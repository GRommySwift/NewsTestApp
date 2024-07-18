//
//  GradientAvatarView.swift
//  NewsApp
//
//  Created by Roman on 18/07/2024.
//

import SwiftUI


struct GradientAvatarView: View {
    var body: some View {
        GeometryReader { _ in
            LinearGradient(
                colors: [Color(UIColor.systemBackground), .clear],
                startPoint: .bottom,
                endPoint: .top
            )
            .frame(height: SizeConstant.avatarHeight / 4)
            .offset(y: -SizeConstant.avatarHeight / 4)
        }
    }
}
