# Particles
execute at @s run particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 0.05 30
execute at @s run particle minecraft:dust{color:[1.0,0.0,0.0],scale:1.2} ~ ~1 ~ 0.3 0.3 0.3 0.1 20

# Funny pop sound
execute at @s run playsound minecraft:entity.chicken.egg ambient @a[distance=..16] ~ ~ ~ 1.0 0.5
execute at @s run playsound minecraft:entity.slime.squish ambient @a[distance=..16] ~ ~ ~ 0.8 1.5

# Kill the illusion
# Drop white meth
execute at @s run summon minecraft:item ~ ~ ~ {Item:{id:"createbb:white_meth",count:2}}

# Kill the illusion
kill @s
