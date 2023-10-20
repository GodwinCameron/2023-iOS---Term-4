//
//  ItemData.swift
//  League Items
//
//  Created by Shiro NoKage on 2023/10/20.
//

import Foundation

let ItemData: [Item] = [
 Item(name: "Bloodthirster", cost: 3400, icon: "itemBT", path: "pathBT", type: "Lengendary", stats: [
 ItemStats(stat: "55 Attack Damage"),
 ItemStats(stat: "12% Life Steal"),
 ItemStats(stat: "20% Critical Strike Chance")], uniquePassive: [ItemPassive(name: "Engorge", passive: "While above 70% Health, gain additional Attack Damage.")], description: "This item is can be bought alongside any other item as it has no unique component and will not occupy your 'Mythic' item slot", tips: "is a great engage item as it encourages you to take trades while at full health thanks to its unique passive.", spikes: [
 ItemSpikes(icon: "itemBF", name: "B.F. Sword", cost: 1300, stat: "Attack Damage"),
 ItemSpikes(icon: "itemCloak", name: "Cloak of Agility", cost: 600, stat: "Critical Strike Chance"),
 ItemSpikes(icon: "itemVamp", name: "Vampiric Scepter", cost: 900, stat: "Life Steal")]),
 
 Item(name: "Stormrazor", cost: 3000, icon: "itemSR", path: "pathSR", type: "Legendary", stats: [
 ItemStats(stat: "55 Attack Damage"),
 ItemStats(stat: "15% Attack Speed"),
 ItemStats(stat: "20% Critical Strike Chance")], uniquePassive:[ItemPassive(name: "Energized", passive: "Moving and Attacking will generate an Energized Attack."), ItemPassive(name: "Bolt", passive: "Your Energized Attack applies bonus magic damage and grants Move Speed.")], description: "Stormrazor can be a great tool for closing gaps and chasing down enemies due to the slow", tips: "is best bought in combination with some more upfront damage to compliment the aggressive stats and ensure you don't start fights you can't win", spikes: [
 ItemSpikes(icon: "itemNoon", name: "Noonquiver", cost: 1300, stat: "Attack Damage"),
 ItemSpikes(icon: "itemCloak", name: "Cloak of Agility", cost: 600, stat: "Critical Strike Chance"),
 ItemSpikes(icon: "itemKS", name: "Kircheis Shard", cost: 700, stat: "Attack Damage")])
]
