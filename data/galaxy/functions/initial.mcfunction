
function galaxy:meta/scoreboard/register
function galaxy:meta/scoreboard/first_time_player_score
function galaxy:config

function galaxy:gui/initial
function galaxy:hud/initial
function galaxy:status_effect/initial
function galaxy:weapon/initial
function galaxy:recipe/initial

function galaxy:version_check

tellraw @a ["",{"text":"[Galaxy]","color":"yellow"},{"text":" Initialize complete!"}]
