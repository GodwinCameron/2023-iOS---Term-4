//
//  SettingsView.swift
//  League Items
//
//  Created by Shiro NoKage on 2023/11/01.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarded") var isOnboarded = true
    var body: some View {
        ZStack{
            Color("Gradient1")
                .ignoresSafeArea(.all)
            VStack{
                HStack{
                    Text("Settings")
                        .font(.title)
                    Spacer()
                    Image(systemName: "xmark.circle.fill")
                        .font(.title2)
                        .onTapGesture {
                            dismiss()
                        }
                }
                .foregroundColor(.white)
                
                GroupBox{
                    HStack{
                        Text("Developed By")
                        Spacer()
                        Link("iOS Developer", destination: URL(string: "https://github.com/GodwinCameron/2023-iOS---Term-4")!)
                            .bold()
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        Image(systemName: "link")
                    }
                    Divider()

                    HStack{
                        Text("Version")
                        Spacer()
                        Text("1.0.0")
                            .bold()
                    }
                    
                }
                Divider().padding()
                GroupBox{
                    DisclosureGroup("About this app"){
                        Text("League of Legends® is a popular MOBA game with tens of millions of daily active players, the game features an extensive library of diverse items and interaction between item sets, League Items aims to bring an accessable and easy to use browsing experience for a user to be able to research something about an item swiftly and without the need for the game client or extensive wiki articles with poor navigation.").padding().bold(false)
                    }.bold()
                }
                Divider().padding()
                Button(action: {
                    isOnboarded.toggle()
                }, label: {
                    Label("Reset onbording", systemImage: "arrow.clockwise.circle.fill")
                        .font(.headline)
                        .foregroundColor(.white)
                })
                
                
                Spacer()
            }
            .padding()
            
        }
    }
}

#Preview {
    SettingsView()
}
