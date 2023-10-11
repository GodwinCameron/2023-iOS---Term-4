//
//  ListItemView.swift
//  2023 iOS - Term 4
//
//  Created by Shiro NoKage on 2023/10/11.
//

import SwiftUI

struct ListItemView: View {
    var body: some View {
        HStack{
            Image("TestImage")
            VStack{
                Text("Item name")
                    .foregroundColor(.white)
                    .font(.system(size: 12))
                HStack{
                    Image("GoldIcon")
                        .resizable()
                        .frame(width: 12, height: 12)
                        Text("500")
                        .foregroundColor(Color("Gold1"))
                }
            }
            VStack{
                Text("Legendary Item")
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                            .padding(.bottom, 2)
                Text("55 Attack Damage")
                    .font(.system(size: 9))
                    .foregroundColor(Color("BlueDetail"))
                Text("20% Critical Strike")
                    .font(.system(size: 9))
                    .foregroundColor(Color("BlueDetail"))
                Text("18% Life Steal")
                    .font(.system(size: 9))
                    .foregroundColor(Color("BlueDetail"))
                
            }
            Text("Read More")
                .foregroundColor(Color("Gold1"))
                .font(.system(size: 10))
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 1)
                        .stroke(Color("Gold1"), lineWidth: 2)
                        )
        }
        .padding()
        .overlay(
                    RoundedRectangle(cornerRadius: 1)
                        .stroke(Color("Gold1"), lineWidth: 2)
                )
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView()
    }
}
