
import SwiftUI

struct CardView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationView{
            VStack{
                // Cards Display
                ScrollView(.horizontal) {
                    HStack (alignment: .center, spacing: 10){
                       // ForEach(cards, id: \.self) { card in
                            Image("cardbig1")
                      //  }
                    }
                }
                .padding()
                
                // Options Button
                Image("options")
                
                // Transactions Button
                Image("transactions")
                .padding()
            }
            .padding(.top, 16)
            .toolbarBackground(.visible, for: .tabBar)
            .preferredColorScheme(.dark)
            
        }
        .searchable(text: $searchText, prompt: LocalizedStringKey("Search..."))
        .navigationTitle(LocalizedStringKey("Your Cards"))
        .navigationBarTitleDisplayMode(.inline)
        .preferredColorScheme(.dark)
    }
}

// Nota: As strings "Search..." e "Your Cards" deveriam ser chaves localizadas que você definiria em seu arquivo Localizable.strings.
