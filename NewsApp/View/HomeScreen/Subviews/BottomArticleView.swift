//
//  BottomArticleView.swift
//  NewsApp
//
//  Created by Roman on 18/07/2024.
//

import SwiftUI

struct BottomArticleView: View {
    //MARK: - Properties
    let article: Article
    
    //MARK: - Body
    var body: some View {
        VStack {
            AsyncImageView(article: article, imageWidth: 120, imageHeight: 120, placeHolder: 120)
            VStack(alignment: .leading) {
                TitleView(article: article)
                Spacer()
                DescriptionView(article: article)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(width: 120, height: 240)
        .padding(10)
        .background(.background)
        .cornerRadius(10)
    }
}
