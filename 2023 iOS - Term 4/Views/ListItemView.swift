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
                Spacer()
            VStack{
                Text("Blood Thirster")
                    .foregroundColor(.white)
                    .font(.system(size: 18))
                    
                HStack{
                    Image("GoldIcon")
                        .resizable()
                        .frame(width: 12, height: 12)
                        Text("3400")
                        .foregroundColor(Color("Gold2"))
                }
            }
            Spacer()
            VStack{
                Text("Legendary Item")
                            .font(.system(size: 9))
                            .foregroundColor(.white)
                            .padding(.bottom, 2)
                Text("55 Attack Damage")
                    .font(.system(size: 7))
                    .foregroundColor(Color("BlueDetail"))
                Text("20% Critical Strike")
                    .font(.system(size: 7))
                    .foregroundColor(Color("BlueDetail"))
                Text("18% Life Steal")
                    .font(.system(size: 7))
                    .foregroundColor(Color("BlueDetail"))
                
            }
            Spacer()
                NavigationLink(destination: IndividualItemScene()){
                    Text("Read More")
                        .foregroundColor(Color.white)
                        .font(.system(size: 10))
                        .padding(.vertical,25)
                        .padding(.horizontal,3)
                        .overlay(RoundedRectangle(cornerRadius: 2)
                            .stroke(Color("Gold1"), lineWidth: 1)
                        )
                }
        }
        .frame(width: 330)
        .padding(10)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("Gradient2"), Color("Gradient1")]), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color("Gold1"), lineWidth: 1)
                )
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView()
    }
}
