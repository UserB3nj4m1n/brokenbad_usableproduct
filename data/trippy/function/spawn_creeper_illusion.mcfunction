# Spawn a silent ignited creeper 4 blocks in front of the player
# Using local coordinates (^ ^ ^) to spawn it relative to player's gaze direction
execute at @s run summon minecraft:creeper ^1 ^ ^4 {Silent:1b,ignited:1b,Fuse:40,Tags:["trippy_illusion","creeper_illusion"]}

# Set the creeper's trip_time timer to 0 so we can track its age
execute as @e[tag=creeper_illusion,limit=1,sort=nearest] run scoreboard players set @s trip_time 0

# Play a faint puff/hiss sound
execute at @s run playsound minecraft:entity.creeper.primed ambient @s ~ ~ ~ 0.3 1.5
