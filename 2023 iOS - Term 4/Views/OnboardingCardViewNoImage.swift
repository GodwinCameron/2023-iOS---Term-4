//
//  OnboardingCardView.swift
//  League Items
//
//  Created by Shiro NoKage on 2023/10/31.
//

import SwiftUI

struct OnboardingCardViewNoImage: View {
    var title: String
    var description: String
    var body: some View {
        VStack{
            TabView{
                VStack(alignment: .center, spacing: 10){
                    Text(title)
                        .font(.system(size: 28, weight: .heavy))
                        .foregroundColor(Color("Gold2"))
                    Text(description)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 16))
                        .foregroundColor(Color("Gold2"))
                        .bold()
                }
                .padding(40)
                .frame(maxWidth: .infinity)
                .background(Color("Gradient1"))
                .cornerRadius(20)
                .foregroundColor(.white)
                .shadow(color: .black.opacity(0.2), radius: 20, x: 2, y:10)
                
                
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
        }//END OF OUTER VSTACK
    }
}

struct OnboardingCardViewNoImage_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardViewNoImage(title:"Welcome to League Items!", description: "The one stop shop for all your League of Legends® Item queries")
    }
}
