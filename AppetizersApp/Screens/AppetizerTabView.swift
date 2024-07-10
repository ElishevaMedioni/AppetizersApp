//
//  ContentView.swift
//  AppetizersApp
//
//  Created by Elisheva Medioni on 22/05/2024.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .tint(Color(ColorResource.brandPrimary))
    }
}

#Preview {
    AppetizerTabView()
}
