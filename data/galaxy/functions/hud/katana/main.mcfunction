execute if entity @s[predicate=galaxy:weapon/hand_off-katana] run function galaxy:hud/katana
execute if entity @s[predicate=galaxy:weapon/hand_main-katana_edge,predicate=galaxy:weapon/hand_off-katana_scabbard] run function galaxy:hud/katana

scoreboard players set @s hudKatana 0
execute if score #hud_katana_act_swap Config matches 1 if score #hud_katana_act_flash Config matches 0 as @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/hand_off-katana,predicate=minecraft:hand_main-empty] run function galaxy:hud/katana/swap-pull
execute if score #hud_katana_act_swap Config matches 1 if score #hud_katana_act_flash Config matches 0 as @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/hand_main-katana_edge,predicate=galaxy:weapon/hand_off-katana_scabbard] run function galaxy:hud/katana/swap-put
execute if score #hud_katana_act_stun Config matches 1 as @s[predicate=!minecraft:sneaking,predicate=galaxy:weapon/hand_main-katana_edge,predicate=galaxy:weapon/hand_off-katana_scabbard] run function galaxy:hud/katana/stun
execute if score #hud_katana_act_flash Config matches 1 as @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/hand_off-katana,predicate=minecraft:hand_main-empty,predicate=minecraft:on_ground] run function galaxy:hud/katana/flash
execute if score #hud_katana_act_flash Config matches 1 as @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/hand_main-katana_edge,predicate=galaxy:weapon/hand_off-katana_scabbard,predicate=minecraft:on_ground] run function galaxy:hud/katana/flash-timer
execute as @s[scores={hudKatana=1..}] run scoreboard players set @s isKatanaHUD 1
execute as @s[scores={hudKatana=0,isKatanaHUD=1}] run title @s actionbar {"text":""}
execute as @s[scores={hudKatana=0}] run scoreboard players set @s isKatanaHUD 0
