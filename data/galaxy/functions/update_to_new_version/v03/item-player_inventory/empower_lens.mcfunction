execute store result score #1 calcu_temp run clear @s minecraft:item_frame{empower_lens:{}} 64
execute unless score #1 calcu_temp matches 1.. store result score #1 calcu_temp run clear @s minecraft:item_frame{EntityTag:{Tags:["entity_placer","empower_lens_placer"]}} 64
execute if score #1 calcu_temp matches 1.. run data modify storage galaxy:get item set value []
execute if score #1 calcu_temp matches 1.. run function galaxy:tool/get/empower_lens
execute if score #1 calcu_temp matches 1.. run execute store result storage galaxy:get item[0].Count byte 1 run scoreboard players get #1 calcu_temp
execute if score #1 calcu_temp matches 1.. run data modify storage cu:item input set from storage galaxy:get item[0]
execute if score #1 calcu_temp matches 1.. run data modify storage cu:item owner set from entity @s UUID
execute if score #1 calcu_temp matches 1.. run function cu:item/give

execute if data entity @s Inventory[{tag:{empower_lens:{}}}] run function galaxy:update_to_new_version/v03/item-player_inventory/empower_lens