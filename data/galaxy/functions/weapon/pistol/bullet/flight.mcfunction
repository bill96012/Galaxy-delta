tag @s add flighting
tp @s ^ ^ ^0.25
# summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["debug"],Particle:"block air",Radius:0.125f,Duration:2147483648,WaitTime:2147483647}

execute store result score @s posX run data get entity @s Pos[0] 10
execute store result score @s posY run data get entity @s Pos[1] 10
execute store result score @s posZ run data get entity @s Pos[2] 10

scoreboard players set @s sucBulletMove 0
scoreboard players set @s sucBulletHit 0
execute store success score @s sucBulletMove run execute if block ~ ~ ~ #galaxy:passable
execute if score @s sucBulletMove matches 1 if entity @e[type=!minecraft:player,tag=!pistolBullet,tag=!debug,distance=..4] run tag @e[type=!minecraft:player,tag=!pistolBullet,tag=!debug,distance=..4] add possibleVictim
execute as @e[tag=possibleVictim] run function galaxy:weapon/pistol/meta/detector/bullet_hit

# execute if score @s sucBulletMove matches 1 store result score #calculation_temp1 numeric run data get entity @s HandItems[0].tag.flightDistance
# execute if score @s sucBulletMove matches 1 run scoreboard players add #calculation_temp1 numeric 5
# execute if score @s sucBulletMove matches 1 store result entity @s HandItems[0].tag.flightDistance int 1 run scoreboard players get #calculation_temp1 numeric

execute if score @s sucBulletMove matches 1 store result score #calculation_temp1 numeric run data get entity @s HandItems[0].tag.disRemain
execute if score @s sucBulletMove matches 1 run scoreboard players remove #calculation_temp1 numeric 1
execute if score @s sucBulletMove matches 1 store result entity @s HandItems[0].tag.disRemain int 1 run scoreboard players get #calculation_temp1 numeric

execute if score @s sucBulletMove matches 1 store result score #calculation_temp1 numeric run data get entity @s HandItems[0].tag.bulletDisLmt
execute if score @s sucBulletMove matches 1 run scoreboard players remove #calculation_temp1 numeric 1
execute if score @s sucBulletMove matches 1 store result entity @s HandItems[0].tag.bulletDisLmt int 1 run scoreboard players get #calculation_temp1 numeric

execute if score @s sucBulletMove matches 1 run particle minecraft:enchanted_hit ~ ~ ~ 0.01 0.01 0.01 0 1

execute if score @s sucBulletHit matches 1 store result score #calculation_temp1 numeric run data get entity @s HandItems[0].tag.bulletDamage
execute if score @s sucBulletHit matches 1 run function galaxy:damage/bullet

execute if entity @s[nbt={HandItems:[{tag:{bulletDisLmt:0}}]}] run kill @s
execute if score @s sucBulletMove matches 0 run kill @s
execute if score @s sucBulletHit matches 1 run kill @s

tag @s remove flighting

# recursive
execute at @s if score @s sucBulletMove matches 1 unless score @s sucBulletHit matches 1 unless entity @s[nbt={HandItems:[{tag:{bulletDisLmt:0}}]}] unless entity @s[nbt={HandItems:[{tag:{disRemain:0}}]}] run function galaxy:weapon/pistol/bullet/flight