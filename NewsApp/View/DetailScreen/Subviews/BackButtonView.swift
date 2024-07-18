//
//  BackButtonView.swift
//  NewsApp
//
//  Created by Roman on 18/07/2024.
//

import SwiftUI

struct BackButtonView: View {
    //MARK: - Properties
    @Environment(\.dismiss) var dismiss
    //MARK: - Body
    var body: some View {
        Button {
            dismiss()
        } label: {
            ZStack {
                Circle()
                    .frame(width: 34)
                    .foregroundColor(.black)
                    .opacity(0.3)
                Image(systemName: "chevron.left")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundStyle(.white)
                    .opacity(0.8)
            }
        }
    }
}

struct BackButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BackButtonView()
    }
}
