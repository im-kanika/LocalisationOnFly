//
//  LanguageInfoView.swift
//  LocalizationOnFly
//
//  Created by Kanika.Sharma on 07/11/24.
//

import SwiftUI

struct LanguageInfoView: View {
    @AppStorage("language") var language: Language = .english_us
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.blue.opacity(0.3), .purple.opacity(0.3)]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack {
                Text("language_info_text".localized(language))
                    .font(.title2)
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    LanguageInfoView()
}
