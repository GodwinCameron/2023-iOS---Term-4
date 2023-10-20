//
//  ListItemView.swift
//  2023 iOS - Term 4
//
//  Created by Shiro NoKage on 2023/10/11.
//

import SwiftUI

struct ListItemView: View {
    var item: Item
    var body: some View {
        HStack{
            Image(item.icon)
                .resizable()
                .frame(width: 60, height: 60)
                Spacer()
            VStack{
                Text(item.name)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    
                HStack{
                    Image("GoldIcon")
                        .resizable()
                        .frame(width: 12, height: 12)
                    Text("\(item.cost)")
                        .foregroundColor(Color("Gold2"))
                }
            }
            Spacer()
            VStack{
                Text("\(item.type) Item")
                            .font(.system(size: 9))
                            .foregroundColor(.white)
                            .padding(.bottom, 2)
                Text("\(item.stats[0].stat)")
                    .font(.system(size: 7))
                    .foregroundColor(Color("BlueDetail"))
                Text("\(item.stats[1].stat)")
                    .font(.system(size: 7))
                    .foregroundColor(Color("BlueDetail"))
                Text("\(item.stats[2].stat)")
                    .font(.system(size: 7))
                    .foregroundColor(Color("BlueDetail"))
                
            }
            Spacer()
            NavigationLink(destination: IndividualItemScene(item: item)){
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

//struct ListItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListItemView()
//    }
//}
