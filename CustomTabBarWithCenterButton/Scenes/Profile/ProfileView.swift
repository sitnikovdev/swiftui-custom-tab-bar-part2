//
//  ProfileView.swift
//  CustomTabBarWithCenterButton
//
//  Created by Algene Pulido on 6/26/24.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject private var coordinator: Coordinator
    var body: some View {
        ZStack {
            Color.purple.opacity(0.3)
            VStack {
                Text("Profile View")
                Button {
                    coordinator.push(.AccountSettings)
                } label: {
                    Text("Go To Account Settings")
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
