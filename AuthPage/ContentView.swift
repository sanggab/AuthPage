//
//  ContentView.swift
//  AuthPage
//
//  Created by Gab on 10/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var authType: AuthType?
    
    var body: some View {
        VStack(spacing: .zero) {
            Spacer()
            
            VStack(spacing: 12) {
                imageView
                
                firstTitleLabel
                
                secondTitleLabel
                
                Text(authType?.stringValue ?? "")
            }
            .padding(.horizontal, 16)
            
            Spacer()
            
            VStack(spacing: 25) {
                verificationView
                
                manageView
            }
            .padding(.bottom, 24)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

// MARK: Contents 구성
private extension ContentView {
    @ViewBuilder
    var imageView: some View {
        Image(systemName: "ellipsis.bubble.fill")
            .resizable()
            .frame(width: 140, height: 140)
    }
    
    @ViewBuilder
    var firstTitleLabel: some View {
        Text("이것은 첫 번째 타이틀 \n 여러 줄이 될 수 있다. 대응하자")
            .multilineTextAlignment(.center)
            .padding(.top, 20)
    }
    
    @ViewBuilder
    var secondTitleLabel: some View {
        Text("가나다라 마바사 가나다라 심상갑이다 가나다라 마바사\n 아아 이것은 테스트 너무 길어 문자 문자 너무 길어 그만 그만 여러줄 너무 많아 근데 퇴근 시켜줘")
            .multilineTextAlignment(.center)
    }
}

// MARK: Button 구성
private extension ContentView {
    @ViewBuilder
    var verificationView: some View {
        Rectangle()
            .fill(.yellow)
            .frame(height: 50)
            .cornerRadius(25)
            .overlay {
                Text("인증")
            }
            .padding(.horizontal, 16)
            .onTapGesture {
                print("상갑 logEvent \(#function) 인증")
                authType = .verification
            }
            .accessibilityLabel("인증")
    }
    
    @ViewBuilder
    var manageView: some View {
        Text("관리")
            .underline(color: .gray)
            .onTapGesture {
                print("상갑 logEvent \(#function) 관리")
                authType = .manage
            }
            .accessibilityLabel("관리")
    }
}

#Preview {
    ContentView()
}
