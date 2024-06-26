//
//  MainView.swift
//  CustomTabBarWithCenterButton
//
//  Created by Algene Pulido on 6/26/24.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab = "homeTab"
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView(selection: $selectedTab) {
                HomeView()
                    .tag("homeTab")
                ProfileView()
                    .tag("profileTab")
            }
            
            CustomTabBarView { index in
                switch index {
                case 0:
                    selectedTab = "homeTab"
                case 2:
                    selectedTab = "profileTab"
                default:
                    selectedTab = "homeTab"
                }
            }
        }
    }
}

#Preview {
    ZStack {
        MainView()
    }
}
