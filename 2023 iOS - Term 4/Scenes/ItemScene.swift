//
//  ItemScene.swift
//  2023 iOS - Term 4
//
//  Created by Shiro NoKage on 2023/10/11.
//

import SwiftUI

struct ItemScene: View {
    var body: some View {
        ZStack{
            Color("AccentColor")
                .ignoresSafeArea()
            VStack{
                Text("All Items:")
                    .foregroundColor(.white)
                ListItemView()
                ListItemView()
                ListItemView()
                ListItemView()
                
                Spacer()
            }
        }
    }
}

struct ItemScene_Previews: PreviewProvider {
    static var previews: some View {
        ItemScene()
    }
}
