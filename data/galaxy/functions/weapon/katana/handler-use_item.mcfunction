execute at @s run function galaxy:weapon/katana/meta/detector/check-action-shock

# katana actions
execute if entity @s[predicate=minecraft:sneaking,predicate=minecraft:hand_main-empty,predicate=galaxy:weapon/hand_off-katana,scores={cdActSwapPull=0}] run tag @s add reqActSwapPull
execute if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/hand_main-katana_edge,predicate=galaxy:weapon/hand_off-katana_scabbard,scores={cdActSwapPut=0}] run tag @s add reqActSwapPut
execute if score #katana_act_stun Config matches 1 if entity @s[predicate=!minecraft:sneaking,predicate=galaxy:weapon/hand_main-katana_edge,predicate=galaxy:weapon/hand_off-katana_scabbard,tag=!canActShock,scores={cdActStun=0}] run tag @s add reqActStun
execute if score #katana_act_flash Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=minecraft:on_ground,predicate=galaxy:weapon/hand_main-katana_edge,predicate=galaxy:weapon/hand_off-katana_scabbard,scores={timActFlash=1..,cdActFlash=0}] run tag @s add reqActFlash
execute if score #katana_act_shock Config matches 1 if entity @s[predicate=!minecraft:sneaking,predicate=galaxy:weapon/hand_main-katana_edge,predicate=galaxy:weapon/hand_off-katana_scabbard,tag=canActShock,scores={cdActShock=0}] run tag @s add reqActShock

execute if entity @s[tag=reqActSwapPull] run function galaxy:weapon/katana/action/swap_pull/main
execute if entity @s[tag=reqActSwapPut] run function galaxy:weapon/katana/action/swap_put/main
execute if entity @s[tag=reqActStun] run function galaxy:weapon/katana/action/stun/main
execute if entity @s[tag=reqActFlash] run function galaxy:weapon/katana/action/flash/main
execute if entity @s[tag=reqActShock] run function galaxy:weapon/katana/action/shock/main

execute if entity @s[tag=reqActSwapPull] run tag @s remove reqActSwapPull
execute if entity @s[tag=reqActSwapPut] run tag @s remove reqActSwapPut
execute if entity @s[tag=reqActStun] run tag @s remove reqActStun
execute if entity @s[tag=reqActFlash] run tag @s remove reqActFlash
execute if entity @s[tag=reqActShock] run tag @s remove reqActShock
