//
//  ItemScene.swift
//  2023 iOS - Term 4
//
//  Created by Shiro NoKage on 2023/10/11.
//

import SwiftUI

struct ItemScene: View {
    
    @State var searchText = ""
    @State var filterName = ""
    @State private var showSettings: Bool = false

    
    var filteredItems: [Item] {
        if !searchText.isEmpty && !filterName.isEmpty {
            return ItemData.filter { $0.name.contains(searchText) && $0.type.contains(filterName) }
        } else if !searchText.isEmpty {
            return ItemData.filter { $0.name.contains(searchText) }
        } else if !filterName.isEmpty {
            return ItemData.filter { $0.type.contains(filterName) }
        } else {
            return ItemData
        }
    }
    
    var body: some View {
        
            NavigationView{
                ZStack{
                    Color("AccentColor")
                        .ignoresSafeArea()
                    VStack(alignment: .leading){
                        HStack{
                            Text("All Items:")
                                .bold()
                                .foregroundColor(.white)
                                .font(.title)
                            Spacer()
                            VStack{
                                Text("Sort by -")
                                    .foregroundColor(.white)
                                HStack{
                                    Text("None")
                                        .foregroundColor(.blue)
                                        .font(.system(size: 12))
                                        .onTapGesture {
                                            filterName = ""
                                        }
                                    Text("Basic")
                                        .foregroundColor(.blue)
                                        .font(.system(size: 12))
                                        .onTapGesture {
                                            filterName = "Basic"
                                        }
                                    Text("Legendary")
                                        .foregroundColor(.blue)
                                        .font(.system(size: 12))
                                        .onTapGesture {
                                            filterName = "Legendary"
                                        }
                                    Text("Mythic")
                                        .foregroundColor(.blue)
                                        .font(.system(size: 12))
                                        .onTapGesture {
                                            filterName = "Mythic"
                                        }
                                }
                            }
                        }
                        .frame(width: 350)
                        ScrollView{
                            ForEach(filteredItems) { item in
                                ListItemView(item: item)
                            } // For loop
                            .searchable(text: $searchText)
                        } // Scroll View
                        HStack{
                            Spacer()
                            Button(action: {
                                // Open Settings
                                showSettings.toggle()
                            }, label: {
                                Label("Settings", systemImage: "gearshape")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }) // Button
                        } // HStack
                        .frame(width: 350)
                    } // VStack
                } // ZStack
                .accentColor(.white)
            } // Navigation View
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
