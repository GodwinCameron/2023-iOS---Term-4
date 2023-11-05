//
//  ItemSpikesModel.swift
//  League Items
//
//  Created by Shiro NoKage on 2023/10/18.
//

import Foundation

struct ItemSpikes: Identifiable {
    var id = UUID()
    var icon: String
    var name: String
    var cost: Int
    var stat: String
}

let dummySpike: ItemSpikes = ItemSpikes(icon: "itemBF", name:"B.F. Sword", cost:1300, stat:"AD")
let dummySpike2: ItemSpikes = ItemSpikes(icon: "itemVamp", name:"Vampiric Sceptre", cost:900, stat:"Life Steal")
let dummySpike3: ItemSpikes = ItemSpikes(icon: "itemCloak", name:"Agility Cloak", cost:600, stat:"Crit")

let dummySpike4: ItemSpikes = ItemSpikes(icon: "itemNoon", name:"Noonquiver", cost:1300, stat:"AD, att.spd")
let dummySpike6: ItemSpikes = ItemSpikes(icon: "itemKS", name:"Kircheis Shard", cost:700, stat:"Mix damage")

