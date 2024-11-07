//
//  ChangeLanguageView.swift
//  boilerplate
//
//  Created by Kanika.Sharma on 26/06/24.
//

import SwiftUI

struct ChangeLanguageView: View {
    
    @AppStorage("language") var language: Language = .english_us
    
    var localizationService = LocalizationService()
    
    var body: some View {
        NavigationStack {
                    ZStack {
                        LinearGradient(
                            gradient: Gradient(colors: [.blue.opacity(0.3), .purple.opacity(0.3)]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                        .ignoresSafeArea()
                        
                        VStack(alignment: .leading, spacing: 20) {
                            HStack {
                                Text("settings_language".localized(language))
                                    .foregroundColor(.blue)
                                    .font(.title)
                                    .bold()
                                    .padding(.leading)
                                
                                Spacer()
                                
                                Menu {
                                    ForEach(languages, id: \.name) { language in
                                        Button {
                                            localizationService.language = language.name
                                            localizationService.isRTL = language.isRTL
                                        } label: {
                                            Text("language_name".localized(language.name))
                                                .foregroundColor(.black)
                                        }
                                    }
                                } label: {
                                    Text("choose_language".localized(language))
                                        .foregroundColor(.white)
                                        .padding(10)
                                        .background(Color.blue.opacity(0.7))
                                        .cornerRadius(10)
                                }
                                .padding(.trailing)
                            }
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("settings_language_footer".localized(language))
                                    .foregroundColor(.blue)
                                    .font(.headline)
                                    .padding(.horizontal)
                                
                                Text("this_text_localised".localized(language))
                                    .foregroundColor(.blue)
                                    .font(.headline)
                                    .padding(.horizontal)
                            }
                            
                            HStack {
                                Spacer()
                                NavigationLink("language_info_view".localized(language), destination: LanguageInfoView())
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(20)
                                    .shadow(radius: 10)
                                Spacer()
                            }
                            .padding(.top, 20)
                            
                            Spacer()
                        }
                        .padding()
                    }
                }
    }
}

#Preview {
    ChangeLanguageView()
}
