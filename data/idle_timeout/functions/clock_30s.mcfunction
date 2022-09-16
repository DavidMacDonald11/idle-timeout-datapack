scoreboard players set #ItHandler it_online 0
execute as @a run scoreboard players add #ItHandler it_online 1

execute if score #ItHandler it_online matches 1.. run scoreboard players reset #Clock it_30mClock
execute if score #ItHandler it_online matches 0 run scoreboard players add #Clock it_30mClock 1
execute if score #Clock it_30mClock matches 60.. run function idle_timeout:stop

scoreboard players reset #Clock it_30sClock
