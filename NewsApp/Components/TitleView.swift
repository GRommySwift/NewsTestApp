//
//  TitleView.swift
//  NewsApp
//
//  Created by Roman on 18/07/2024.
//

import SwiftUI

struct TitleView: View {
    let article: Article
    var body: some View {
        Text(article.title)
            .titleFont()
    }
}
