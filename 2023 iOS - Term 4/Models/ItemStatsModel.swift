//
//  ItemStatsModel.swift
//  League Items
//
//  Created by Shiro NoKage on 2023/10/18.
//

import Foundation

struct ItemStats: Identifiable {
    var id = UUID()
    var stat: String
}

let dummyStats: ItemStats = ItemStats(stat: "55 Attack Damage")
let dummyStats2: ItemStats = ItemStats(stat: "20% Critical Strike Chance")
let dummyStats3: ItemStats = ItemStats(stat: "18% Life Steal")

let dummyStats4: ItemStats = ItemStats(stat: "15% Attack Speed")
let dummyStats5: ItemStats = ItemStats(stat: "12% Critical Strike Chance")
let dummyStats6: ItemStats = ItemStats(stat: "60 Attack Damage")

