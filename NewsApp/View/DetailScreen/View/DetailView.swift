//
//  DetailView.swift
//  NewsApp
//
//  Created by Roman on 18/07/2024.
//

import SwiftUI

struct DetailView: View {
    //MARK: - Properties
    let article: Article
    var body: some View {
        ZStack(alignment: .topLeading) {
            ScrollView(.vertical, showsIndicators: false) {
                MainImageView(article: article)
                
                VStack(alignment: .leading, spacing: 20) {
                    TitleView(article: article)
                    DescriptionView(article: article)
                    DateView(article: article)
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.background)
                .background(GradientAvatarView())
            }
            .ignoresSafeArea()
            .navigationBarHidden(true)
            
            BackButtonView()
                .padding(.leading)
        }
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(article: Article(title: "Exampe",
                                    description: "asdfsdfgsdfs",
                                    url: "",
                                    urlToImage: "https://images.wsj.net/im-973059/social",
                                    publishedAt: Date()))
    }
}




