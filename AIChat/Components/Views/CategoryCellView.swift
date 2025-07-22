//
//  CategoryCellView.swift
//  AIChat
//
//  Created by Hussien Awada on 22/07/2025.
//

import SwiftUI

struct CategoryCellView: View {
    
    var title: String = "Aliens"
    var imageName: String = Constants.randomImageUrl
    var font: Font = .title2
    var cornerRadius: CGFloat = 16
    var body: some View {
        
        ZStack {
            ImageLoaderView(urlString: imageName)
                .aspectRatio(1, contentMode: .fit)
                .overlay(alignment: .bottomLeading) {
                    Text(title)
                        .font(font)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.white)
                        .padding(16)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .addingGradientBackgroundForText()
                }
                .cornerRadius(cornerRadius)
        }
    }
}

#Preview {
    CategoryCellView()
        .frame(width: 300, height: 200)
}
