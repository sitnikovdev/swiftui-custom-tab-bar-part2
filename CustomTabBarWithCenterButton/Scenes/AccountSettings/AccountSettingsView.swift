//
//  AccountSettingsView.swift
//  CustomTabBarWithCenterButton
//
//  Created by Algene Pulido on 6/29/24.
//

import SwiftUI

struct AccountSettingsView: View {
    @Environment(\.tabVisibility) private var tabVisibility: Binding<Bool>
    var body: some View {
        Text("Account Settings")
            .onAppear() {
                tabVisibility.wrappedValue = false
            }
            .onDisappear() {
                tabVisibility.wrappedValue = true
            }
    }
}

#Preview {
    AccountSettingsView()
}
