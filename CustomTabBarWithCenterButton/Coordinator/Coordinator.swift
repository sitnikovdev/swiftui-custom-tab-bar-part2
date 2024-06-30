//
//  Coordinator.swift
//  CustomTabBarWithCenterButton
//
//  Created by Algene Pulido on 6/29/24.
//

import SwiftUI

class Coordinator: ObservableObject {
    @Published var path = NavigationPath()
    
    func push(_ route: Route) {
        path.append(route)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast()
    }
    
    @ViewBuilder
    func build(route: Route) -> some View {
        switch route {
        case .ProductDetail:
            ProductDetailView()
        case .AccountSettings:
            AccountSettingsView()
        }
    }
}
