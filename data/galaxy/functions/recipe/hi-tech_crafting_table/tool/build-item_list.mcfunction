scoreboard players set @s htctListPageMax 1

# wrench
execute if score @s htctListPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:iron_sword{display:{Name:'{"translate":"item.galaxy.wrench","italic":false,"color":"white"}',Lore:['[{"text":"- ","color":"dark_gray","italic":false},{"translate":"item.galaxy.steel_ingot","color":"gray","italic":false},{"text":" x ","color":"dark_gray","italic":false},{"text":"1","color":"gray","italic":false}]','[{"text":"- ","color":"dark_gray","italic":false},{"translate":"item.minecraft.iron_ingot","color":"gray","italic":false},{"text":" x ","color":"dark_gray","italic":false},{"text":"3","color":"gray","italic":false}]']},HideFlags:63,CustomModelData:10100,guiItem:1}

# structure empower
execute if score @s htctListPage matches 1 run replaceitem block ~ ~ ~ container.4 minecraft:armor_stand{display:{Name:'{"translate":"item.galaxy.structure_empower","italic":false,"color":"white"}',Lore:['[{"text":"- ","color":"dark_gray","italic":false},{"translate":"item.minecraft.blaze_rod","color":"gray","italic":false},{"text":" x ","color":"dark_gray","italic":false},{"text":"4","color":"gray","italic":false}]','[{"text":"- ","color":"dark_gray","italic":false},{"translate":"item.minecraft.gold_ingot","color":"gray","italic":false},{"text":" x ","color":"dark_gray","italic":false},{"text":"2","color":"gray","italic":false}]','[{"text":"- ","color":"dark_gray","italic":false},{"translate":"block.minecraft.glass_pane","color":"gray","italic":false},{"text":" x ","color":"dark_gray","italic":false},{"text":"1","color":"gray","italic":false}]']},CustomModelData:30100,guiItem:1}
