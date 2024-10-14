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
        pageOne
    }
    
}

private extension ContentView {
    @ViewBuilder
    var pageOne: some View {
        VStack(spacing: .zero) {
            Spacer()
            
            VStack(spacing: 12) {
                pageOneImageView
                
                pageOneFirstTitleLabel
                
                pageOneSecondTitleLabel
                
//                Text(authType?.stringValue ?? "")
            }
            
            Spacer()
            
            VStack(spacing: 25) {
                pageOneVerificationBtn
                
                pageOneManageBtn
            }
            .padding(.bottom, 24)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 16)
    }
    
    @ViewBuilder
    var pageTwo: some View {
        ZStack {
            VStack(spacing: 32) {
                pageTwoImageView
                
                pageTwoFirstTitleLabel
                
//                Text(authType?.stringValue ?? "")
                
                pageTwoManageBtn
            }
            .padding(.horizontal, 16)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


// MARK: PageOne Contents 구성
private extension ContentView {
    @ViewBuilder
    var pageOneImageView: some View {
        Image(systemName: "ellipsis.bubble.fill")
            .resizable()
            .frame(width: 140, height: 140)
    }
    
    @ViewBuilder
    var pageOneFirstTitleLabel: some View {
        Text("이것은 첫 번째 타이틀 \n 여러 줄이 될 수 있다. 대응하자")
            .multilineTextAlignment(.center)
            .padding(.top, 20)
    }
    
    @ViewBuilder
    var pageOneSecondTitleLabel: some View {
        Text("가나다라 마바사 가나다라 심상갑이다 가나다라 마바사\n 아아 이것은 테스트 너무 길어 문자 문자 너무 길어 그만 그만 여러줄 너무 많아 근데 퇴근 시켜줘")
            .multilineTextAlignment(.center)
    }
}

// MARK: PageOne Button 구성
private extension ContentView {
    /// Shape들은 accessibilityLabel에 StringProtocol로 못 찾는 듯 하여 Text로 구현해서 찾아가야한다.
    @ViewBuilder
    var pageOneVerificationBtn: some View {
        Rectangle()
            .fill(.yellow)
            .frame(height: 50)
            .cornerRadius(25)
            .overlay {
                Text("인증")
            }
            .onTapGesture {
                print("상갑 logEvent \(#function) 인증")
                authType = .verification
            }
            .accessibilityLabel(Text("PageOneVerification"))
    }
    /// Text는 accessibilityLabel에 StringProtocol 가능
    @ViewBuilder
    var pageOneManageBtn: some View {
        Text("관리")
            .underline(color: .gray)
            .onTapGesture {
                print("상갑 logEvent \(#function) 관리")
                authType = .manage
            }
            .accessibilityLabel("PageOneManage")
    }
}

// MARK: PageTwo Contents 구성
private extension ContentView {
    @ViewBuilder
    var pageTwoImageView: some View {
        Image(systemName: "arrow.counterclockwise.circle.fill")
            .resizable()
            .frame(width: 140, height: 140)
    }
    
    @ViewBuilder
    var pageTwoFirstTitleLabel: some View {
        Text("그렇지만 물론 풀파워로 당신과 싸울 생각은 없으니 걱정하지 마세요... 내 전투력은 530000입니다!")
            .multilineTextAlignment(.center)
    }
    
    @ViewBuilder
    var pageTwoManageBtn: some View {
        Rectangle()
            .fill(.yellow)
            .frame(width: 170, height: 50)
            .cornerRadius(25)
            .overlay {
                Text("Manage account")
            }
            .onTapGesture {
                print("상갑 logEvent \(#function) 관리")
                authType = .manage
            }
            .accessibilityLabel(Text("PageTwoManage"))
    }
}


#Preview {
    ContentView()
}
