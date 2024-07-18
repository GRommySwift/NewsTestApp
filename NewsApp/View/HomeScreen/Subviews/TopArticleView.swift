//
//  TopArticleView.swift
//  NewsApp
//
//  Created by Roman on 17/07/2024.
//

import SwiftUI

struct TopArticleView: View {
    
    //MARK: - Properties
    
    let article: Article
    
    //MARK: - Body
    var body: some View {
        VStack {
            AsyncImageView(article: article, imageWidth: 260, imageHeight: 150, placeHolder: 150)

            VStack(alignment: .leading) {
                Text(article.title)
                    .titleFont()
                Spacer()
                Text(article.publishedAt.convertDate())
                    .descriptionFont()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(width: 260, height: 260)
        .padding(10)
        .background(.background)
        .cornerRadius(10)
    }
}
