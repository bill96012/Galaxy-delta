execute as @a[tag=!InitializedGalaxyKatanaScore] run function galaxy:weapon/katana/meta/scoreboard/set_player_score

execute as @a[tag=wasActShock,predicate=minecraft:on_ground] at @s run function galaxy:weapon/katana/action/shock/levitation-end

function galaxy:weapon/katana/cooldown
function galaxy:weapon/katana/special_item_entity/main
