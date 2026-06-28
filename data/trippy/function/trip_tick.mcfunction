# Decrement trip_time
scoreboard players remove @s trip_time 1

# Check if trip is finished
execute if score @s trip_time matches ..0 run function trippy:trip_end

# If the trip is active, run the active trippy effects
execute if score @s trip_time matches 1.. run function trippy:trip_active
