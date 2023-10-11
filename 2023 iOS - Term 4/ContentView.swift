//
//  Splash.swift
//  2023 iOS - Term 4
//
//  Created by Shiro NoKage on 2023/10/04.
//

import SwiftUI

struct Splash: View {
    @State private var isActive = false
    var body: some View {
        ZStack{
            Color("AccentColor")
                .ignoresSafeArea()
            Image("Icon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding()
        }
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}
