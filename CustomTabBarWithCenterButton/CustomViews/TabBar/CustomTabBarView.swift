//
//  CustomTabBarView.swift
//  CustomTabBarWithCenterButton
//
//  Created by Algene Pulido on 6/26/24.
//

import SwiftUI

struct CustomTabBarView: View {
    private let tabs = ["house.circle", "", "person.crop.circle"]
    @State private var selectedTab: String = "house.circle"
    
    var selectedIndex: ((Int)->())?
    
    var body: some View {
        VStack(alignment: .center) {
            Rectangle()
                .opacity(0.3)
                .frame(height: 0.2)
            ZStack {
                HStack {
                    ForEach(tabs, id: \.self) { image in
                        Spacer()
                        if image.isEmpty {
                            Spacer()
                        } else {
                            Button {
                                withAnimation(Animation.interactiveSpring(dampingFraction: 2)) {
                                    selectedTab = image
                                }
                                selectedIndex?(tabs.firstIndex(of: image) ?? 0)
                            } label: {
                                Image(systemName: image)
                                    .resizable()
                                    .renderingMode(.template)
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(image == selectedTab ? getIconColor(image: image) : Color.black)
                                    .background(Color.white.opacity(selectedTab == image ? 1 : 0))
                                    .foregroundStyle(.blue)
                            }
                            .frame(width: 60, height: 32)
                        }
                        Spacer()
                    }
                } //HStack
                .padding(.horizontal, 50)
                .padding(.vertical, 10)
                
                Button {
                    //TODO:
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .foregroundStyle(.red)
                        .background(Circle().fill(.white))
                }
                .offset(y: -35)
                
            } //ZStack
        } //VStack
        .frame(maxWidth: .infinity)
        .fixedSize(horizontal: false, vertical: true)
        .background(.white)
    }
    
    private func getIconColor(image: String) -> Color {
        switch image {
        case "house.circle":
            return Color.red
        case "person.crop.circle":
            return Color.red
        default:
            return Color.black
        }
    }
}

#Preview {
    ZStack(alignment: .bottom) {
        Color.gray.opacity(0.2)
            .ignoresSafeArea()
        CustomTabBarView { index in
            print("CustomTabBarView index \(index)")
        }
    }
}
