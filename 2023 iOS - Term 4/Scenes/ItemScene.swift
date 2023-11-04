//
//  ItemScene.swift
//  2023 iOS - Term 4
//
//  Created by Shiro NoKage on 2023/10/11.
//

import SwiftUI

struct ItemScene: View {
<<<<<<< HEAD
=======
    
    @State var searchText = ""
    @State private var showSettings: Bool = false
    
    var searchResult : [Item] {
        if(searchText.isEmpty) {
            return ItemData
        } else{
            return ItemData.filter{$0.name.contains(searchText)}
        }
    }
    
    
>>>>>>> parent of 2a26f43... complete
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
<<<<<<< HEAD
                        ForEach(ItemData) { item in
                            ListItemView(item: item)
                                            }
                        
                        Spacer()
                            .padding(.vertical)
                    }
                }
                .accentColor(.white)
=======
                        ScrollView{
                            ForEach(searchResult) { item in
                                ListItemView(item: item)
                            }
                        }.searchable(text: $searchText)
                            .padding(.vertical)
                        HStack{
                            Spacer()
                            Button(action: {
                                // Open Settings
                                showSettings.toggle()
                            }, label: {
                                Label("Settings", systemImage: "gearshape")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            })
                        }
                        .frame(width: 350)
                    }
                }
                .accentColor(.white)
            }
            .sheet(isPresented: $showSettings) {
                SettingsView()
>>>>>>> parent of 2a26f43... complete
            }
            .edgesIgnoringSafeArea(.all)
    }

}

struct ItemScene_Previews: PreviewProvider {
    static var previews: some View {
        ItemScene()
    }
}
