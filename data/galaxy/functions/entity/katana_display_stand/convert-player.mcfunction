data modify storage galaxy:get item set value []
execute if score @s kdsDisplayType matches 1 run function galaxy:weapon/katana/get/katana
execute if score @s kdsDisplayType matches 2 run function galaxy:weapon/katana/get/katana_edge
execute if score @s kdsDisplayType matches 3 run function galaxy:weapon/katana/get/katana_scabbard
data modify storage cu:replaceitem item set from storage galaxy:get item[0]
execute store result storage cu:replaceitem item.tag.katana.type byte 1 run scoreboard players get @s kdsDisplayType
execute store result storage cu:replaceitem item.tag.katana.style byte 1 run scoreboard players get @s kdsDisplayStyle
execute store result storage cu:replaceitem item.tag.CustomModelData int 1 run scoreboard players get @s kdsDisplayModel
data modify storage cu:replaceitem item.tag.display.Name set from entity @s ArmorItems[3].tag.kdsKatana.Name
execute as @a[tag=ThisPlayer] run function cu:replaceitem/hand_main
