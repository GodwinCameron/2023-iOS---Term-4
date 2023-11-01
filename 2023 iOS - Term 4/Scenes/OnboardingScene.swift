//
//  OnboardingScene.swift
//  League Items
//
//  Created by Shiro NoKage on 2023/10/31.
//

import SwiftUI

struct OnboardingScene: View {
    @AppStorage("isOnboarded") var isOnboarded = false
    
    var body: some View {
        ZStack{
            Color("AccentColor")
                .ignoresSafeArea(.all)
            VStack{
                TabView{
                    OnboardingCardView(title:"Welcome to League Items!", description: "The one stop shop for all your League of Legends® Item queries", icon: "Icon")
                        .padding()
                    
                    OnboardingCardView(title:"Search.", description: "Find the Item you want to see/learn more about", icon: "search")
                        .padding()
                    
                    OnboardingCardViewNoImage(title:"Enjoy!", description: "Have all the Item info you need avalible at a moment's notice! Hit continue to start searching.")
                        .padding()
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                
                Button(action: {
                    isOnboarded.toggle()
                }){
                    HStack{
                        Text("Continue")
                        Spacer()
                        Image(systemName: "arrow.right.circle.fill")
                            .padding()
                    }
                }
                .buttonStyle(.borderedProminent)
                .padding()
            }
        }
    }
}

#Preview {
    OnboardingScene()
}
