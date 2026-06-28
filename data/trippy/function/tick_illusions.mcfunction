# Increment illusion lifetime timer
scoreboard players add @s trip_time 1

# --- CREEPER ILLUSION LOGIC ---
# If it's a creeper illusion, check if it should pop (at age 35 ticks, just before it would explode)
execute if entity @s[tag=creeper_illusion] if score @s trip_time matches 35.. run function trippy:creeper_pop

# --- SHADOW FIGURE LOGIC ---
# If it's a shadow figure, make it face the nearest player who is on a trip
execute if entity @s[tag=shadow_figure] run tp @s ~ ~ ~ facing entity @p[tag=on_trip,limit=1,sort=nearest] feet

# If a player gets too close to the shadow figure (within 5 blocks), make it vanish
execute if entity @s[tag=shadow_figure] at @s if entity @p[distance=..5] run function trippy:shadow_vanish

# If the shadow figure has existed for 100 ticks (5 seconds), make it vanish
execute if entity @s[tag=shadow_figure] if score @s trip_time matches 100.. run function trippy:shadow_vanish
