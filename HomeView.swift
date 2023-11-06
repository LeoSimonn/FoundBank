
import SwiftUI

// TODO: Definir o modelo 'Card' e a ViewModel apropriada em outro local do código

struct HomeView: View {
    // TODO: Substituir por uma fonte de dados real através da ViewModel
    @State var cards: [Card] = [
        Card(title: "Salary", invoice: "$ 2,236", flag: "visa", number: "** 6917"),
        Card(title: "Savings account", invoice: "$ 5,566", flag: "master", number: "** 4552")
    ]
    
    var body: some View {
        
        NavigationStack {
            VStack(alignment: .leading) {
                // Logo and Title
                LogoView() // Extrai para uma subview reutilizável
                
                // Balance Section
                BalanceView() // Extrai para uma subview reutilizável
                
                // Cards Section
                CardsListView(cards: $cards) // Extrai para uma subview reutilizável
                
                // Bottom Icons Section
                BottomIconsView() // Extrai para uma subview reutilizável
            }
            .padding(.leading)
            
            Spacer()
        }
        .toolbarBackground(.visible, for: .tabBar)
        .preferredColorScheme(.dark)
    }
}

// TODO: Definir as subviews reutilizáveis aqui ou em arquivos separados

// Subview para exibir o logo e o título
struct LogoView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 2) {


            Text("Found")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(Color(red: 0.39, green: 0.82, blue: 1))
            
            Text("Bank")
                .font(.system(size: 18, weight: .regular))
                .foregroundColor(.white)
        }
    }
}

// Subview para exibir o saldo
struct BalanceView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(LocalizedStringKey("Your_balance"))
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            
            Text("$ 7,896") // Isso deve ser substituído por um dado dinâmico
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.white)
        }
    }
}

// Subview para exibir a lista de cartões
struct CardsListView: View {
    @Binding var cards: [Card]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                //ForEach(cards, id: \.self) { card in
                   
              //  }
            }
        }
    }
}

// Subview para a seção de ícones na parte inferior
struct BottomIconsView: View {
    var body: some View {
        HStack {
            // Ícones e NavigationLinks
            // ...
        }
    }
}
