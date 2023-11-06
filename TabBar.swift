//
//  CardData.swift
//  FoundBank
//
//  Created by Foundation08 on 30/10/23.
//
import SwiftUI

struct TabBar: View {
    var body: some View {
        NavigationView {
            TabView {
                HomeView()
                    .tabItem {
                        Label("Account", systemImage: "dollarsign.circle.fill")
                    }
                CardView()
                    .tabItem {
                        Label("Cards", systemImage: "creditcard.fill")
                    }
               TransfersView()
                  .tabItem {
                       Label("Transfers", systemImage: "arrow.left.arrow.right")
                  }
            }
        }
    }
}


