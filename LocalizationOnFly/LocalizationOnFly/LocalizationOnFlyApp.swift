//
//  LocalizationOnFlyApp.swift
//  LocalizationOnFly
//
//  Created by Kanika.Sharma on 07/11/24.
//

import SwiftUI

@main
struct LocalizationOnFlyApp: App {
    @AppStorage("isRTL") var isRTL: Bool = false
    var body: some Scene {
        WindowGroup {
            ChangeLanguageView().environment(\.layoutDirection, isRTL ? .rightToLeft : .leftToRight)
        }
    }
}
