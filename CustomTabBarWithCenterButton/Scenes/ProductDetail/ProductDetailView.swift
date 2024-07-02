//
//  ProductDetailView.swift
//  CustomTabBarWithCenterButton
//
//  Created by Algene Pulido on 6/29/24.
//

import SwiftUI

struct ProductDetailView: View {
    @Environment(\.tabVisibility) private var tabVisibility: Binding<Bool>
    
    var body: some View {
        Text("Product Detail")
            .onAppear() {
                tabVisibility.wrappedValue = false
            }
            .onDisappear() {
                tabVisibility.wrappedValue = true
            }
    }
        
}

#Preview {
    ProductDetailView()
}
