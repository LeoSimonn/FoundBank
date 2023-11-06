//
//  CardData.swift
//  FoundBank
//
//  Created by Foundation08 on 30/10/23.
//


import SwiftUI

struct Card: Identifiable {
    
    var id = UUID()
    var title: String
    var invoice: String
    var flag: String
    var number: String
    
    init(id: UUID = UUID(), title: String, invoice: String, flag: String, number: String) {
        self.id = id
        self.title = title
        self.invoice = invoice
        self.flag = flag
        self.number = number
    }
    
}

var cards: [Card] = [
    Card (title: "Salary", invoice: "$ 2,236", flag: "visa", number: "** 6917"),
    Card (title: "Savings account", invoice: "$ 5,566", flag: "master", number: "** 4552"),
    Card (title: "Savings account", invoice: "$ 5,566", flag: "master", number: "** 4552")
]
