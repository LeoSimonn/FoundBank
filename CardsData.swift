//
//  CardData.swift
//  FoundBank
//
//  Created by Foundation08 on 30/10/23.
//

import SwiftUI

struct CardData: View {
    
    @State var cards: [Card] = [
        Card (title: "Salary", invoice: "$ 2,236", flag: "visa", number: "** 6917"),
        Card (title: "Savings account", invoice: "$ 5,566", flag: "master", number: "** 4552"),
        Card (title: "Savings account", invoice: "$ 5,566", flag: "master", number: "** 4552")
    ]
    var body: some View {
        
        
            
            VStack(alignment: .leading) {
                
                Text("Cards")
                    .bold()
                    .padding()
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach($cards) { card in
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 155.89334, height: 179.06668)
                                .background(
                                    LinearGradient(
                                        stops: [
                                            Gradient.Stop(color: .white, location: 0.00),
                                            Gradient.Stop(color: Color(red: 0.39, green: 0.82, blue: 1), location: 1.00),
                                        ],
                                        startPoint: UnitPoint(x: 0.5, y: 0),
                                        endPoint: UnitPoint(x: 0.5, y: 1)
                                    )
                                )
                                .cornerRadius(24)
                                .frame(alignment: .topLeading)
                        }
                    }
                    .padding(.leading)
                }
            }
        
    }
}

