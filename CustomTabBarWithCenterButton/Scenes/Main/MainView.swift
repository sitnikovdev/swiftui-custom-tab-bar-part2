//
//  MainView.swift
//  CustomTabBarWithCenterButton
//
//  Created by Algene Pulido on 6/26/24.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab = "homeTab"
    @StateObject private var homeCoordinator = Coordinator()
    @StateObject private var profileCoordinator = Coordinator()
    @State private var tabVisible: Bool = true
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView(selection: $selectedTab) {
                NavigationStack(path: $homeCoordinator.path) {
                    HomeView()
                        .navigationDestination(for: Route.self) { route in
                            homeCoordinator.build(route: route)
                        }
                        .environmentObject(homeCoordinator)
                }
                .tag("homeTab")
                NavigationStack(path: $profileCoordinator.path) {
                    ProfileView()
                        .navigationDestination(for: Route.self) { route in
                            profileCoordinator.build(route: route)
                        }
                        .environmentObject(profileCoordinator)
                }
                .tag("profileTab")
            }
            
            if tabVisible {
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
        .environment(\.tabVisibility, $tabVisible)
    }
}

#Preview {
    ZStack {
        MainView()
    }
}
