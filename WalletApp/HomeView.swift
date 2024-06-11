//
//  HomeView.swift
//  WalletApp
//
//  Created by Modamori Oluwayomi on 2024-06-10.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            Text("Wallet")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .center)
            
            ScrollView(.vertical, showsIndicators: false){
                ForEach(cards){ card in
                    CardView(card:  card)
                }
                
            }
        }
        .padding([.horizontal, .top])
    }
    @ViewBuilder
    func CardView(card: Card) -> some View {
        GeometryReader{proxy in
            ZStack(alignment: .bottomLeading){
                Image(card.cardImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                VStack(alignment:.leading, spacing: 10){
                    Text(card.name)
                        .fontWeight(.bold)
                    
                    Text(card.cardNumber)
                        .font(.callout)
                        .fontWeight(.bold)
                }
                .padding()
                .padding(.bottom, 10)
            }
        }
        .frame(height: 200)
    }
}

#Preview {
    HomeView()
}
