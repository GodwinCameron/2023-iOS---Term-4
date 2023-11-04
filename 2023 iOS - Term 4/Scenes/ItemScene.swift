//
//  ItemScene.swift
//  2023 iOS - Term 4
//
//  Created by Shiro NoKage on 2023/10/11.
//

import SwiftUI

struct ItemScene: View {
    var body: some View {
            NavigationView{
                ZStack{
                    Color("AccentColor")
                        .ignoresSafeArea()
                    VStack(alignment: .leading){
                        Text("All Items:")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title)
                        ForEach(ItemData) { item in
                            ListItemView(item: item)
                                            }
                        
                        Spacer()
                            .padding(.vertical)
                    }
                }
                .accentColor(.white)
            }
            .edgesIgnoringSafeArea(.all)
    }

}

struct ItemScene_Previews: PreviewProvider {
    static var previews: some View {
        ItemScene()
    }
}
