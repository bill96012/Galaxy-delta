data modify storage galaxy:temp +weapon.energy_saber.replaceitem.itemTag set from entity @s SelectedItem.tag
data modify storage galaxy:temp +weapon.energy_saber.replaceitem.itemCustomDataTag set from storage galaxy:temp +weapon.energy_saber.replaceitem.itemTag.CustomData.galaxy.tag

data modify storage galaxy:get item set value []
function galaxy:weapon/energy_saber/get/plasum
data modify storage cu:item input set from storage galaxy:get item[0]
function galaxy:weapon/energy_saber/replaceitem/calculate_cmd-off
execute store result storage cu:item input.tag.CustomModelData int 1 run scoreboard players get @s sbrMdl
data modify storage cu:item input.tag.display.Name set from storage galaxy:temp +weapon.energy_saber.replaceitem.itemTag.display.Name
data modify storage cu:item input.tag.CustomData.galaxy.tag set from storage galaxy:temp +weapon.energy_saber.replaceitem.itemCustomDataTag
data modify storage cu:item input.tag.CustomData.galaxy.tag.status set value 0b
function cu:item/replaceitem/hand_main

