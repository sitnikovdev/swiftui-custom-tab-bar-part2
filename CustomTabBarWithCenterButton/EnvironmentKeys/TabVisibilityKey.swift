//
//  TabVisibilityKey.swift
//  CustomTabBarWithCenterButton
//
//  Created by Algene Pulido on 7/2/24.
//

import SwiftUI

struct TabVisibilityKey: EnvironmentKey {
    static let defaultValue: Binding<Bool> = .constant(true)
}

extension EnvironmentValues {
    var tabVisibility: Binding<Bool> {
        get { return self[TabVisibilityKey.self] }
        set { self[TabVisibilityKey.self] = newValue }
    }
}
