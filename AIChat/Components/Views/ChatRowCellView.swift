//
//  ChatRowCellView.swift
//  AIChat
//
//  Created by Hussien Awada on 23/07/2025.
//

import SwiftUI

struct ChatRowCellView: View {
    
    var imageName: String? = Constants.randomImageUrl
    var headline: String? = "Alpha"
    var subheadline: String? = "This is teh lase message in the chat"
    var hasNewChat: Bool = true
    
    var body: some View {
        HStack(spacing: 8) {
            ZStack {
                if let imageName {
                    ImageLoaderView(urlString: imageName)
                } else {
                    Rectangle()
                        .fill(.secondary.opacity(0.05))
                }
            }
            .frame(width: 50, height: 50)
            .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 4) {
                if let headline {
                    Text(headline)
                        .font(.headline)
                        .fontWeight(.medium)
                }
                if let subheadline {
                    Text(subheadline)
                        .foregroundStyle(.secondary)
                        .font(.subheadline)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            if hasNewChat {
                Text("New")
                    .font(.caption)
                    .bold()
                    .foregroundStyle(Color.white)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 6)
                    .background(Color.blue)
                    .cornerRadius(6)
            }
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 8)
        .background(Color(uiColor: UIColor.systemBackground))
    }
}

#Preview {
    ZStack {
        Color.gray.ignoresSafeArea()
        
        List {
            ChatRowCellView()
                .removeListRowFormating()
            ChatRowCellView(hasNewChat: false)
                .removeListRowFormating()
            ChatRowCellView(imageName: nil)
                .removeListRowFormating()
        }
    }
    
}
