//
//  Contacts.swift
//  FoundBank
//
//  Created by Foundation15 on 01/11/23.
//

import Foundation
import SwiftUI

struct Contacts: Identifiable{
    
    let id = UUID()
    let name: String
    let bank: String
    let photo: String
    
}

var contacts: [Contacts] = [
    
    Contacts(name: "Arlene McCoy", bank: "C6 Bank", photo: "photo1"),
    Contacts(name: "Savannah Nguyen", bank: "Bradesco", photo: "photo2"),
    Contacts(name: "Floyd Miles", bank: "Itaú", photo: "photo3"),
    Contacts(name: "Gai Nakako", bank: "Banco do Brasil", photo: "photo4"),
    Contacts(name: "Mike Morales", bank: "NuBank", photo: "photo5"),
    Contacts(name: "Laura Lurds", bank: "Banco Digio", photo: "photo6"),
    Contacts(name: "John Mac", bank: "John Mac", photo: "photo7"),
    
]

let recentContacts: [String] = ["Floyd Miles", "John Mac", "Gai Nakako", "Savannah Nguyen"]

