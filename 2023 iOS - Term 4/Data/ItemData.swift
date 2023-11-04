//
//  ItemData.swift
//  League Items
//
//  Created by Shiro NoKage on 2023/10/20.
//

import Foundation

let ItemData: [Item] = [
 Item(name: "Bloodthirster",
      cost: 3400,
      icon: "itemBT",
      path: "pathBT",
      type: "Lengendary",
      stats: [
        ItemStats(stat: "55 Attack Damage"),
        ItemStats(stat: "12% Life Steal"),
        ItemStats(stat: "20% Critical Strike Chance")],
      uniquePassive: [
        ItemPassive(name: "Engorge", passive: "While above 70% Health, gain additional Attack Damage.")],
      description: "This item is can be bought alongside any other item as it has no unique component and will not occupy your 'Mythic' item slot", 
      tips: "is a great engage item as it encourages you to take trades while at full health thanks to its unique passive.",
      spikes: [
        ItemSpikes(icon: "itemBF", name: "B.F. Sword", cost: 1300, stat: "Attack Damage"),
        ItemSpikes(icon: "itemCloak", name: "Cloak of Agility", cost: 600, stat: "Critical Strike Chance"),
        ItemSpikes(icon: "itemVamp", name: "Vampiric Scepter", cost: 900, stat: "Life Steal")]),
 
 Item(name: "Stormrazor", 
      cost: 3000,
      icon: "itemSR",
      path: "pathSR",
      type: "Legendary",
      stats: [
        ItemStats(stat: "55 Attack Damage"),
        ItemStats(stat: "15% Attack Speed"),
        ItemStats(stat: "20% Critical Strike Chance")], 
      uniquePassive:[
        ItemPassive(name: "Energized", passive: "Moving and Attacking will generate an Energized Attack."),
        ItemPassive(name: "Bolt", passive: "Your Energized Attack applies bonus magic damage and grants Move Speed.")],
      description: "Stormrazor can be a great tool for closing gaps and chasing down enemies due to the slow",
      tips: "is best bought in combination with some more upfront damage to compliment the aggressive stats and ensure you don't start fights you can't win",
      spikes: [
        ItemSpikes(icon: "itemNoon", name: "Noonquiver", cost: 1300, stat: "Attack Damage"),
        ItemSpikes(icon: "itemCloak", name: "Cloak of Agility", cost: 600, stat: "Critical Strike Chance"),
        ItemSpikes(icon: "itemKS", name: "Kircheis Shard", cost: 700, stat: "Attack Damage")]),
 
 Item(name: "Stridebreaker", 
      cost: 3300,
      icon: "itemSB",
      path: "pathSB",
      type: "Mythic",
      stats: [
        ItemStats(stat: "60 Attack Damage"),
        ItemStats(stat: "20% Attack Speed"),
        ItemStats(stat: "375 Health"),
        ItemStats(stat: "20 Ability Haste")], 
      uniquePassive: [
        ItemPassive(name: "Halting Slash", passive: "Deal 175% base AD physical damage to enemies in a 450 radius centered around you and  slow them by 40% for 3 seconds. Can move while casting (15 (reduced by ability haste) second cooldown)."),
        ItemPassive(name: "Heroic Gait", passive: "Dealing physical damage grants you 20 bonus movement speed for 2 seconds."), 
        ItemPassive(name: "Mythic Passive", passive: " Empowers each of your other Legendary items with 2% bonus movement speed.")],
      description: "Stridebreaker is a great chasing and dueling tool, it helps you keep enemies close and gives you the ferver of battle with a movement speed edge for the duration of the fight",
      tips: "is best used at the start of the fight due to its low cooldown and high pressense having the slow stacked on the enemy",
      spikes: [
        ItemSpikes(icon: "itemIW", name: "Ironspike Whip", cost: 1100, stat: "Attack Damage"),
        ItemSpikes(icon: "itemHA", name: "Hearthbound Axe", cost: 1100, stat: "Damage and speed"),
        ItemSpikes(icon: "itemKg", name: "Kindlegem", cost: 800, stat: "Health")]),
 
 Item(name: "Divine Sunderer",
      cost: 3300,
      icon: "itemDS",
      path: "pathDS",
      type: "Mythic",
      stats: [
         ItemStats(stat: "+40 Attack Damage"),
         ItemStats(stat: "+20 Ability Haste"),
         ItemStats(stat: "+300 Health")
      ],
      uniquePassive: [
         ItemPassive(name: "Spellblade",passive: "After using an ability, your next basic attack within 10 seconds deals 160% base AD (+ ( 4% /  2%) of target's maximum health) as bonus physical damage on-hit, for a minimum of 150% base AD and a maximum of 250% base AD against monsters. If the target is a champion,  heal for 88% base AD (+ ( 2.2% /  1.1%) of target's maximum health) (1.5 (begins after using the empowered attack) second cooldown)."),
         ItemPassive(name: "Mythic Passive", passive: "Empowers each of your other Legendary items with 3% armor penetration and 3% magic penetration.")
      ],
      description: "text",
      tips: "text",
      spikes: [ItemSpikes(icon: "itemIW", name: "Ironspike Whip", cost: 1100, stat: "Attack Damage")]),
 
 
 Item(name: "Dusk Blade",
      cost: 3100,
      icon: "itemDB",
      path: "pathDB",
      type: "Mythic",
      stats: [
         ItemStats(stat: "+60 Attack Damage"),
         ItemStats(stat: "+15 Ability Haste"),
         ItemStats(stat: "+18 Lethality (11.2 − 18 (based on level) armor penetration)")
      ],
      uniquePassive: [
         ItemPassive(name: "Nightstalker",
                     passive: "Your abilities deal 0% − 16% (based on target's missing health) increased damage against enemy champions. Scoring a  takedown against an enemy champion within 3 seconds of damaging them renders you  untargetable for 1.5 seconds, which ends prematurely if you perform an action that  breaks stealth (30 second cooldown)."),
         ItemPassive(name: "Mythic Passive", passive: "Empowers each of your other Legendary items with 5 bonus movement speed and 5 ability haste.")
      ],
      description: "text",
      tips: "text",
      spikes: [ItemSpikes(icon: "itemIW", name: "Ironspike Whip", cost: 1100, stat: "Attack Damage")]),
 
 Item(name: "Echoes of Helia",
      cost: 2300,
      icon: "itemEoH",
      path: "pathEoH",
      type: "Mythic",
      stats: [
         ItemStats(stat: "+30 Ability Power"),
         ItemStats(stat: "+15 Ability Haste"),
         ItemStats(stat: "+200 Health"),
         ItemStats(stat: "+125% Base Mana Regeneration")
      ],
      uniquePassive: [
         ItemPassive(name: "Soul Siphon",
                      passive: "Damaging an enemy champion with a basic attack or ability damage grants a Soul Shard, up to 2.  Healing or  shielding an allied champion (excluding yourself) consumes all Soul Shards to launch a missile at them and the nearest enemy champion within 1100 units of them, healing the ally for 20 − 80 (based on ally's level) per shard and dealing 30 − 180 (based on ally's level) magic damage per shard to the enemy."),
         ItemPassive(name: "Dissonance",
                      passive: "Gain 3 ability power for every additional 25% base mana regeneration. Disables HARMONY on your other items.")
      ],
      description: "text",
      tips: "text",
      spikes: [ItemSpikes(icon: "itemIW", name: "Ironspike Whip", cost: 1100, stat: "Attack Damage")]),
 
 
 Item(name: "Crown of the Shattered Queen",
      cost: 2800,
      icon: "itemCoSQ",
      path: "pathCoSQ",
      type: "Mythic",
      stats: [
         ItemStats(stat: "+85 Ability Power"),
         ItemStats(stat: "+20 Ability Haste"),
         ItemStats(stat: "+250 Health"),
         ItemStats(stat: "+600 Mana")
      ],
      uniquePassive: [
         ItemPassive(name: "Safeguard",
                      passive: "Become Safeguarded to reduce incoming champion damage by 40%, lingering for 2.5 seconds after taking damage from a champion (40 (restarts upon taking damage from champions) second cooldown)."),
      ],
      description: "text",
      tips: "text",
      spikes: [ItemSpikes(icon: "itemIW", name: "Ironspike Whip", cost: 1100, stat: "Attack Damage")]),
 
 Item(name: "Eclipse",
      cost: 3200,
      icon: "itemEclipse",
      path: "pathEclipse",
      type: "Mythic",
      stats: [
         ItemStats(stat: "+60 Attack Damage"),
         ItemStats(stat: "+15 Ability Haste"),
         ItemStats(stat: "+12 Lethality (7.47 − 12 (based on level) armor penetration)")
      ],
      uniquePassive: [
         ItemPassive(name: "Ever Rising Moon",
                      passive: "Hitting an enemy champion with 2 separate attacks or abilities within 1.5 seconds deals bonus physical damage equal to ( 6% /  3%) of target's maximum health and grants you 15% bonus movement speed and a  shield for ( 160 /  80) (+ ( 35% /  17.5%) bonus AD) for 2 seconds (( 6 /  12) second cooldown).")
      ],
      description: "text",
      tips: "text",
      spikes: [ItemSpikes(icon: "itemIW", name: "Ironspike Whip", cost: 1100, stat: "Attack Damage")]),
 
 Item(name: "Evenshroud",
      cost: 2800,
      icon: "itemEvenshroud",
      path: "pathEvenshroud",
      type: "Mythic",
      stats: [
         ItemStats(stat: "+20 Ability Haste"),
         ItemStats(stat: "+30 Armor"),
         ItemStats(stat: "+30 Magic Resistance"),
         ItemStats(stat: "+200 Health")
      ],
      uniquePassive: [
         ItemPassive(name: "Coruscation",
                      passive: "Becoming affected by or applying an  immobilizing or  grounding effect to or from an enemy champion affects them and all enemy champions within 600 units of you with Repent, increasing the damage they take by 7% for 5 seconds.")
      ],
      description: "text",
      tips: "text",
      spikes: [ItemSpikes(icon: "itemIW", name: "Ironspike Whip", cost: 1100, stat: "Attack Damage")]),
 
 Item(name: "Everfrost",
      cost: 3200,
      icon: "itemEverfrost",
      path: "pathEverfrost",
      type: "Mythic",
      stats: [
         ItemStats(stat: "+70 Ability Power"),
         ItemStats(stat: "+20 Ability Haste"),
         ItemStats(stat: "+250 Health"),
         ItemStats(stat: "+600 Mana")
      ],
      uniquePassive: [
         ItemPassive(name: "Glaciate",
                      passive: "Unleash a fan of icy shards in a cone in the target direction, dealing 100 (+ 30% AP) magic damage to enemies struck within and  slowing them by 65% for 1 second. Enemies hit in the center of the cone are  rooted for the same duration instead (30 second cooldown)."),
         ItemPassive(name: "Mythic Passive",
                      passive: "Empowers each of your other Legendary items with 10 ability power.")
      ],
      description: "text",
      tips: "text",
      spikes: [ItemSpikes(icon: "itemIW", name: "Ironspike Whip", cost: 1100, stat: "Attack Damage")]),
 
 Item(name: "Galeforce",
      cost: 3400,
      icon: "itemGaleforce",
      path: "pathGaleforce",
      type: "Mythic",
      stats: [
         ItemStats(stat: "+50 Attack Damage"),
         ItemStats(stat: "+15% Attack Speed"),
         ItemStats(stat: "+20% Critical Strike Chance"),
         ItemStats(stat: "+7% Movement Speed")
      ],
      uniquePassive: [
         ItemPassive(name: "Cloudburst",
                      passive: "Dash to the target location, though not through terrain, and fire three homing missiles at the most wounded enemy within 750 units of you at the end of the dash, prioritizing enemy champions. Each missile deals 50 − 116.67 (based on level) (+ 15% bonus AD) physical damage, for a total of 150 − 350 (based on level) (+ 45% bonus AD), increased by 0% − 50% (based on target's missing health) (120 second cooldown; 200 - 425 range)."),
         ItemPassive(name: "Mythic Passive",
                      passive: "Empowers each of your other Legendary items with 5 bonus attack damage.")
      ],
      
      description: "text",
      tips: "text",
      spikes: [ItemSpikes(icon: "itemIW", name: "Ironspike Whip", cost: 1100, stat: "Attack Damage")]),


]
