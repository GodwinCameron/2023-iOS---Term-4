//
//  ItemModel.swift
//  League Items
//
//  Created by Shiro NoKage on 2023/10/16.
//

import Foundation

struct Item: Identifiable {
    var id = UUID()
    var name: String
    var cost: Int
    var icon: String
    var path: String
    var type: String
    var stats: [ItemStats]
    var uniquePassive: [ItemPassive]
    var description: String
    var tips: String
    var spikes: [ItemSpikes]
}

let dummyItem: Item = Item(
    name: "Bloodthirster",
    cost: 3400,
    icon: "itemBT",
    path: "pathBT",
    type: "Legendary",
    stats: [dummyStats, dummyStats2, dummyStats3],
//    uniquePassive: "Engorge",
//    uniquePassiveEffect: "While above 70% Health, gain additional attack damage",
    uniquePassive: [ItemPassive(name: "Engorge", passive: "While above 70% Health, gain additional attack damage")],
    description: "This item is can be bought alongside any other item as it has no unique component and will not occupy your 'Mythic' item slot",
    tips: "is a great engage item as it encourages you to take trades while at full health thanks to its unique passive.",
    spikes: [dummySpike, dummySpike2, dummySpike3]
)
let dummyItem2: Item = Item(
    name: "Stormrazor",
    cost: 3000,
    icon: "itemSR",
    path: "BuildPathSR",
    type: "Legendary",
    stats: [dummyStats4, dummyStats5, dummyStats6],
//    uniquePassive: "Bolt",
//    uniquePassiveEffect: "Your Energized Attack applies bonus magic damage and grants Move Speed.",
    uniquePassive: [ItemPassive(name: "Bolt", passive: "Your Energized Attack applies bonus magic damage and grants Move Speed")],
    description: "This item helps close gaps and keep up with enemies to finish them off",
    tips: "is a great chase item as it grants movement speed to help you stick onto a target as they flee.",
    spikes: [dummySpike4, dummySpike3, dummySpike6]
)
