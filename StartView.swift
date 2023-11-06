import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("TelaInicialBackgound")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all) // This ensures that the image fills the entire screen
                
                VStack {
                    // Image of cards
                    Image("cards")
                        .resizable()
                        .frame(width: 368, height: 350)
                        .padding(.bottom, 40)
                    
                    // Texts and button
                    VStack(alignment: .center, spacing: 16) { // Center alignment
                        // Title text
                        Text(LocalizedStringKey("Make with you money move with you"))
                            .font(.system(size: 32, weight: .bold))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                        
                        // Subtitle text
                        Text(LocalizedStringKey("Most of the things in our app are managed with gestures"))
                            .font(.system(size: 16, weight: .medium))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                        
                        // Get started button
                        NavigationLink(destination: HomeView()) {
                            Text(LocalizedStringKey("Get started"))
                                .font(.system(size: 16, weight: .semibold))
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 56)
                                .background(Color(red: 0.39, green: 0.82, blue: 1))
                                .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.12))
                                .cornerRadius(64)
                                .padding(.vertical, 40)
                        }
                    }
                    .padding(.horizontal) // Adds padding to the sides
                }
            }
        }
    }
}

struct Preview: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
