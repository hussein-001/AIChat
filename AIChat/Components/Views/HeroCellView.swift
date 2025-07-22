//
//  HomeCellView.swift
//  AIChat
//
//  Created by Hussien Awada on 03/07/2025.
//

import SwiftUI

struct HeroCellView: View {
    
    var title: String? = "this is some title"
    var subTitle: String? = "this is some SubTitle"
    var imageName: String? = Constants.randomImageUrl
    
    var body: some View {
        ZStack {
            if let imageName {
                ImageLoaderView(urlString: imageName)
            } else {
                Rectangle()
                    .fill(.accent)
            }
        }
        .overlay(alignment: .bottomLeading) {
            VStack(alignment: .leading, spacing: 4) {
                if let title {
                    Text(title)
                        .font(.headline)
                }
                if let subTitle {
                    Text(subTitle)
                        .font(.subheadline)
                }
            }
            .foregroundStyle(.white)
            .padding(16)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                LinearGradient(colors: [
                    Color.black.opacity(0.2),
                    Color.black.opacity(0.3),
                    Color.black.opacity(0.4)
                ], startPoint: .top, endPoint: .bottom
                )
            )
        }
        .cornerRadius(16)
            
    }
}

#Preview {
    HeroCellView()
        .frame(width: 300, height: 200)
}
