//
//  ContentView.swift
//  AuthPage
//
//  Created by Gab on 10/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Spacer()
        
        VStack(spacing: 12) {
            imageView
            
            Text("Please complete an additional\n verification step.")
                .multilineTextAlignment(.center)
                .padding(.top, 20)
            
            Text("가나다라 마바사 가나다라 심상갑이다 가나다라 마바사\n 아아 이것은 테스트 너무 길어 문자 문자 너무 길어")
                .multilineTextAlignment(.center)
        }
        .padding(.horizontal, 16)
        .background(.mint)
        
        Spacer()
        
        VStack(spacing: 25) {
            Rectangle()
                .fill(.yellow)
                .frame(height: 50)
                .cornerRadius(25)
                .overlay {
                    Text("Verification")
                }
                .padding(.horizontal, 16)
                .accessibilityLabel("Verification")
            
            Text("Manage account")
                .underline(color: .gray)
                .accessibilityLabel("ManageButton")
        }
        .padding(.bottom, 24)
    }
    
    @ViewBuilder
    var imageView: some View {
        Image(systemName: "ellipsis.bubble.fill")
            .resizable()
            .frame(width: 140, height: 140)
    }
}

#Preview {
    ContentView()
}
