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
            
            Text("이것은 첫 번째 타이틀 \n 여러 줄이 될 수 있다. 대응하자")
                .multilineTextAlignment(.center)
                .padding(.top, 20)
            
            Text("가나다라 마바사 가나다라 심상갑이다 가나다라 마바사\n 아아 이것은 테스트 너무 길어 문자 문자 너무 길어 그만 그만 여러줄 너무 많아 근데 퇴근 시켜줘")
                .multilineTextAlignment(.center)
        }
        .padding(.horizontal, 16)
//        .background(.mint)
        
        Spacer()
        
        VStack(spacing: 25) {
            Rectangle()
                .fill(.yellow)
                .frame(height: 50)
                .cornerRadius(25)
                .overlay {
                    Text("인증")
                }
                .padding(.horizontal, 16)
                .accessibilityLabel("인증")
            
            Text("관리")
                .underline(color: .gray)
                .accessibilityLabel("관리")
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
