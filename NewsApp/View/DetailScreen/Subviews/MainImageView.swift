//
//  MainImageView.swift
//  NewsApp
//
//  Created by Roman on 18/07/2024.
//

import SwiftUI


struct MainImageView: View {
    let article: Article
    
    var body: some View {
        GeometryReader { reader in
            if let url = article.urlToImage, let imageURL = URL(string: url) {
                AsyncImage(url: imageURL) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .offset(y: -reader.frame(in: .global).minY)
                            .frame(width: SizeConstant.ScreenWidth, height: reader.frame(in: .global).minY + SizeConstant.avatarHeight + 10)
                    }
                }
            }
        }
        .frame(height: SizeConstant.avatarHeight)
    }
}
