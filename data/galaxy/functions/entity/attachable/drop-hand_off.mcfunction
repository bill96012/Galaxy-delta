data modify storage galaxy:get item set value []
data modify storage galaxy:get item append from entity @s HandItems[1]
execute if data storage galaxy:get item[0] run function galaxy:item_entity/summon
item replace entity @s weapon.offhand with minecraft:air

