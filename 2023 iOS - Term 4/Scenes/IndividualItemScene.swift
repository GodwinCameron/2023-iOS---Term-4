//
//  IndividualItemScene.swift
//  League Items
//
//  Created by Shiro NoKage on 2023/10/17.
//

import SwiftUI

struct IndividualItemScene: View {
    
    var item : Item = dummyItem2
    
    var body: some View {
        ZStack{
            Color("AccentColor")
                .ignoresSafeArea()
            VStack{
                Text("Item - \(item.name)")
                    .font(.title3)
                VStack(alignment: .leading){
                    HStack(alignment: .top){
                        Image(item.icon)
                            .resizable()
                            .frame(width: 50, height: 50)
                        VStack(alignment: .leading, spacing: 2){
                            Text(item.name)
                                .font(.system(size: 18))
                            HStack{
                                Text("Cost:")
                                    .font(.system(size: 13))
                                Image("GoldIcon")
                                Text("\(item.cost)")
                                    .foregroundColor(Color("Gold2"))
                            }
                        }
                        Spacer()
                    }
                    Text("Build Path  -")
                        .font(.system(size: 15))
                    HStack{
                        Spacer()
                        Image(item.path)
                            .resizable()
                            .frame(width: 300, height: 200)
                            .frame(alignment: .center)
                        Spacer()
                    }
                        
                    Spacer()
                    
                }
                .frame(width: 360, height: 300)
                .padding(10)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color("Gradient2"), Color("Gradient1")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color("Gold1"), lineWidth: 1)
                        )
                Text("Info (Scroll):")
                    .foregroundColor(Color("Gold1"))
                    .padding(.vertical,1)
                ScrollView{
                    VStack(alignment: .leading){
                        
                        HStack{
                            Text("\(item.type) Item - \(item.description)")
                            Spacer()
                        }
                        .padding(.horizontal)
                        VStack(alignment: .leading){
                            Text("Stats:")
                            VStack(alignment: .leading){
                                ForEach(item.stats) { stat in
                                                Text("• \(stat.stat)")
                                            }
                            }.foregroundColor(Color("BlueDetail"))
                        }
                        .padding(.horizontal)
                        .padding(.vertical,1)
                        VStack(alignment: .leading){
                            Text("Unique Passive:")
                            VStack(alignment: .leading){
                                HStack(alignment: .top){
                                    Text("• ")
                                    Text(item.uniquePassive)
                                        .foregroundColor(Color("Gold2"))
                                    Text(": \(item.uniquePassiveEffect)")
                                }
                            }
                        }
                        .padding(.horizontal)
                        .padding(.vertical,1)
                        VStack(alignment: .leading){
                            Text("\(item.name) \(item.tips)")

                        }
                        .padding(.horizontal)
                        .padding(.vertical,1)
                        VStack(alignment: .leading){
                            Text("Spike Costs -")
                            VStack(alignment: .leading){
                                ForEach(item.spikes) { spike in
                                    HStack{
                                        Image(spike.icon)
                                            .resizable()
                                            .frame(width: 40, height: 40)
                                        Image("GoldIcon")
                                        
                                        Text("\(spike.cost)")
                                            .foregroundColor(Color("Gold2"))
                                        Spacer()
                                        Text("\(spike.name) - \(spike.stat)")
                                        Spacer()
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                        .padding(.vertical,20)
                        
                        
                    }
                    .padding(.vertical)
                    Spacer()
                }
            }
            
            
        }
        .foregroundColor(Color.white)
    }
}

struct IndividualItemScene_Previews: PreviewProvider {
    static var previews: some View {
        IndividualItemScene()
    }
}
