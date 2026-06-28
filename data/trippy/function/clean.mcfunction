# Clear all trip tags
tag @a remove on_trip
tag @a remove on_white_trip
tag @a remove on_blue_trip

# Reset scoreboard objectives
scoreboard players set @a trip_time 0
scoreboard players set @a trip_wobble 0

# Kill all illusions
kill @e[tag=trippy_illusion]

# Clear active effects
effect clear @a minecraft:nausea
effect clear @a minecraft:speed
effect clear @a minecraft:jump_boost
effect clear @a minecraft:haste
effect clear @a minecraft:glowing
effect clear @a minecraft:darkness
effect clear @a minecraft:blindness
effect clear @a minecraft:levitation
effect give @a minecraft:slow_falling 5 0 true

tellraw @a {"text":"[Trippy Datapack] Cleared all active trip effects and illusions.","color":"yellow"}
