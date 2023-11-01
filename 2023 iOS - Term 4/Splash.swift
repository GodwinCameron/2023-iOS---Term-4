//
//  Splash.swift
//  2023 iOS - Term 4
//
//  Created by Shiro NoKage on 2023/10/04.
//

import SwiftUI

struct Splash: View {
    @State private var isActive = false
    @AppStorage("isOnboarded") var isOnboarded: Bool = false
    var body: some View {
        if isActive {
            if(isOnboarded){
                ItemScene()
            } else {
                OnboardingScene()
            }
        } else {
            ZStack{
                Color("AccentColor")
                    .ignoresSafeArea()
                Image("Icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding()
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}
