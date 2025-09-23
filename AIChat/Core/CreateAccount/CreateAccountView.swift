//
//  CreateAccountView.swift
//  AIChat
//
//  Created by Hussien Awada on 05/08/2025.
//

import SwiftUI

struct CreateAccountView: View {
    
    var title: String = "Create Account?"
    var subTitle: String = "Don't have an account? Sign up for free"
    
    var body: some View {
        VStack(spacing: 24) {
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(subTitle)
                    .font(.body)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            SignInWithAppleButtonView(
                type: .signIn,
                style: .black,
                cornerRadius: 10
            )
            .frame(height: 55)
            .anyButton(.press) {
                
            }
            Spacer()
        }
        .padding(16)
        .padding(.top, 40)
    }
}

#Preview {
    CreateAccountView()
}
