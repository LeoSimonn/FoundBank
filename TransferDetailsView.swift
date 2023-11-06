import SwiftUI

struct TransferDetailsView: View {
    @State private var amount: String = "$150.00"
    @State private var vat: String = "$2.00"
    @State private var total: String = "$152.00"
    @State private var payWith: String = "******6966"
    @State private var message: String = "Your money Arlene"
    
    var body: some View {
        NavigationView{
            VStack {
                profileSection
                detailsSection
                paymentButton
            }
            .navigationTitle("Transfer Details")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black.edgesIgnoringSafeArea(.all))
            .preferredColorScheme(.dark)
        }
    }
    
    var profileSection: some View {
        VStack {
            
            HStack(alignment: .top, spacing: 16) {
                Image("photo1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 59, height: 59)
                    .clipped()
                    .cornerRadius(29.5)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Arlene MyCoy")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                    
                    Text("C6 Bank")
                        .font(.system(size: 16))
                        .foregroundColor(Color.gray)
                }
                Spacer()
            }.padding()
        }
    }
    
    func labeledDetail(label: String, value: Binding<String>) -> some View {
        VStack {
            HStack {
                Text(label)
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
                Spacer()
                
                TextField("", text: value)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white)
                    .textFieldStyle(PlainTextFieldStyle())
                    .frame(width: 200)
                
                
            }
            .padding(.vertical, 8)
        }
    }
    
    var detailsSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            labeledDetail(label: "Ammount", value: $amount)
            labeledDetail(label: "VAT", value: $vat)
            labeledDetail(label: "Total", value: $total)
            ZStack {
                labeledDetail(label: "Pay With", value: $payWith)
                Image("master")
                    .padding(.leading, 280)
            }
            
            labeledDetail(label: "Message", value: $message)
        }
        .padding(.horizontal, 16)
    }
    
    var paymentButton: some View {
        VStack {
            Spacer(minLength: 30)
            Button(action: {}) {
                Text("Pay")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .background(Color.green)
                    .cornerRadius(16)
            }
            .padding(.horizontal, 16)
        }
    }
}

