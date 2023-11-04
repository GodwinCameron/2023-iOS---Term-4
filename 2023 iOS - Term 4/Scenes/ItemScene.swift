//
//  ItemScene.swift
//  2023 iOS - Term 4
//
//  Created by Shiro NoKage on 2023/10/11.
//

import SwiftUI

struct ItemScene: View {
    
    @State var searchText = ""
    @State private var showSettings: Bool = false
    
    var searchResult : [Item] {
        if(searchText.isEmpty) {
            return ItemData
        } else{
            return ItemData.filter{$0.name.contains(searchText)}
        }
    }
    
    
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
            }
            .edgesIgnoringSafeArea(.all)
    }

}

struct ItemScene_Previews: PreviewProvider {
    static var previews: some View {
        ItemScene()
    }
}
