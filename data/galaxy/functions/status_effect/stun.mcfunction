scoreboard players set @e[scores={durStuStun=1..}] isStuStun 1
scoreboard players set @e[scores={durStuStun=0}] isStuStun 0

execute as @e[scores={isStuStun=0}] run data modify entity @s NoAI set value 0

execute as @e[tag=init-status-stun] if score #stu_stun_dur Config matches 1.. store result score @s durStuStun run scoreboard players get #stu_stun_dur Config
execute as @e[tag=init-status-stun,type=#galaxy:hostile,type=!#galaxy:hostile_undead] run effect give @s minecraft:instant_damage 1 31 true
execute as @e[tag=init-status-stun,type=#galaxy:hostile,type=#galaxy:hostile_undead] run effect give @s minecraft:instant_health 1 31 true
execute as @e[tag=init-flash-damage] if score #stu_stun_damage Config matches 1.. store result score @s health run data get entity @s Health
execute as @e[tag=init-flash-damage] if score #stu_stun_damage Config matches 1.. run scoreboard players operation @s health -= #stu_stun_damage Config
execute as @e[tag=init-status-stun] if score #stu_stun_damage Config matches 1.. store result entity @s Health float 1 run scoreboard players get @s health
execute as @e[tag=init-status-stun] at @s run particle minecraft:crit ~ ~0.75 ~ 0.1 0.1 0.1 1 25
execute as @e[tag=init-status-stun] run data modify entity @s NoAI set value 1
tag @e[tag=init-status-stun] remove init-status-stun

scoreboard players remove @e[scores={durStuStun=1..}] durStuStun 1
