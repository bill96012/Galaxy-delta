execute if score @s htctListPage matches 1 store success score @s sucRequest unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b}]} run scoreboard players set @s reqRcpHTct 1
execute if score @s htctListPage matches 1 store success score @s sucRequest unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b}]} run scoreboard players set @s reqRcpHTct 2

execute if score @s sucRequest matches 1 run function galaxy:delete-gui_item
execute if score @s sucRequest matches 1.. run scoreboard players set @s guiMode 1
execute if score @s sucRequest matches 1.. run scoreboard players set @s htctRequPage 1
execute if score @s sucRequest matches 1.. run scoreboard players set @s setGui 1
execute if score @s sucRequest matches 1.. run scoreboard players set @s sucRequest 0
