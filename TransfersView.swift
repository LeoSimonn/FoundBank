import Foundation
import SwiftUI

struct TransfersView: View {
    
    @State var isTransferSheetPresented = false
    @State private var searchText = ""
    
    let actionItems: [(imageName: String, title: String)] = [
        ("arrow.left.arrow.right", "Transfer"),
        ("qrcode", "PIX"),
        ("plus.circle", "Add Contact")
    ]
    
    // Usamos este recentContacts
    let recentContactsList: [String] = ["Floyd Miles", "John Mac", "Gai Nakako", "Savannah Nguyen"]
    
    // Adicionamos isto para acessar os contatos do outro arquivo
    let contactsList = contacts
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 16) {
                headerSection(title: "Actions")
                actionItemsScrollView()
                
                headerSection(title: "Recents")
                recentContactsScrollView()
                
                headerSection(title: "Contacts")
                contactsListView()
            }
            .searchable(text: $searchText, prompt: "Search...")
            .navigationTitle("Transfers")
            .navigationBarTitleDisplayMode(.inline)
            .frame(width: 362, alignment: .topLeading)
            .preferredColorScheme(.dark)
        }
    }
    
    func actionItemsScrollView() -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(actionItems, id: \.title) { item in
                    actionButton(image: item.imageName, text: item.title) {
                        if item.title == "Transfer" {
                            isTransferSheetPresented = true
                        }
                    }
                }
            }
        }
        .sheet(isPresented: $isTransferSheetPresented) {
            // Conteúdo da sua sheet para transferência aqui
            TransferDetailsView()
        }
    }
    
    func recentContactsScrollView() -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(recentContactsList, id: \.self) { contact in
                    contactButton(contactName: contact)
                }
            }
        }
    }
    
    func contactsListView() -> some View {
        List(contactsList) { contact in
            profileSection(imageName: contact.photo, name: contact.name, bankName: contact.bank)
        }
        .listStyle(PlainListStyle())
        .padding(.horizontal, -34)
        .padding(.vertical, -8)
    }
    
    func headerSection(title: String) -> some View {
        Text(title)
            .font(.system(size: 20, weight: .bold))
            .foregroundColor(.white)
    }
    
    func actionButton(image: String, text: String, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            VStack(alignment: .leading, spacing: 16){
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.white)
                Text(text)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.white)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            }
            .padding()
            .frame(width: 100, height: 100, alignment: .center)
            .background(Color(red: 0.17, green: 0.17, blue: 0.18))
            .cornerRadius(16)
        }
    }
    
    
    func contactButton(contactName: String) -> some View {
        HStack(alignment: .center, spacing: 10) {
            Text(contactName)
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(16)
        .frame(height: 44, alignment: .center)
        .background(Color(red: 0.17, green: 0.17, blue: 0.18))
        .cornerRadius(16)
    }
    
    func profileSection(imageName: String, name: String, bankName: String) -> some View {
        HStack(alignment: .top, spacing: 16) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 59, height: 59)
                .clipped()
                .cornerRadius(29.5)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(name)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                
                Text(bankName)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(Color.gray)
            }
            Spacer()
        }.padding()
    }
}
