# Trippy Meth Experience Datapack
This datapack brings a highly immersive, trippy, and intense visual/gameplay experience to Minecraft 1.21.1 Neoforge when consuming items from the *Create: Broken Bad* mod (`createbb:white_meth` and `createbb:blue_meth`).

Since these items are not normally food items, the datapack dynamically applies a `minecraft:food` component when you hold them, allowing you to consume them!

---

## 🌟 Key Features

### 🌪️ The White Meth Trip (40 Seconds)
* **Initial Burst:** You are engulfed in a thick cloud of white smoke and a loud elder guardian screech.
* **Effects:**
  * **Nausea I** (Screen warping)
  * **Speed IV** & **Haste III** (Rapid movement and interaction)
  * **Jump Boost III** (Floaty jumps)
  * **Darkness** (Short pulse of pitch-black hallucination)
  * **Glowing I**
* **Camera Wobble:** Gentle stumbling motion back and forth every 5 ticks.
* **Audio:** Spooky whispering sounds and wind flapping.
* **Float Phase:** At specific timestamps (e.g., 35s, 30s, 25s...), you temporarily float upward due to sudden levitation.
* **Visuals:** Persistent white dust and nautilus rings floating around your head.

### 🌀 The Blue Meth Trip (80 Seconds - Purity: 99.1%)
* **Initial Burst:** Massive ominous sound, ender dragon growl, and a violent burst of blue portal particles.
* **Effects:**
  * **Nausea V** (Extreme screen warping)
  * **Speed VI** & **Haste V** (Superhuman speeds)
  * **Strength IV** & **Resistance II** (Complete battle adrenaline)
  * **Regeneration III** (20s)
  * **Levitation II** (First 5 seconds shoot you straight into the sky, followed by Slow Falling)
  * **Flashing Darkness** & **Glowing I**
* **Camera Wobble:** Rapid stumbling, shifting yaw and pitch to simulate loss of balance.
* **Audio:** Glitchy portal noises, enderman teleports, and eerie potion drinking sounds.
* **Space Walk Floating:** Powerful levitation bursts followed by slow falling drift phases occur throughout the trip.
* **Visuals:** Intensely sparkling blue trail particles and ominous trial-spawner rings.

### 🧠 Hallucinations (Both Trips)
While tripping, you will occasionally (randomly) experience:
1. **The Silent Creeper:** A silent, ignited creeper will spawn right in front of you. It will run towards you, swelling up as if to explode. Right at the last split-second, it vanishes into a puff of smoke with a funny "pop" sound, **dropping 2x White Meth!**
2. **The Shadow Figure:** A mysterious, glowing Wither Skeleton named `?` will spawn in the distance, silently watching you and turning its head to track you. If you get within 5 blocks of it, or if 5 seconds pass, it vanishes in a portal puff, **dropping 1x Blue Meth!** (It also drops it if you kill it yourself!)
3. **Sensory Glitches:** Random whispers, sudden pitch black blindness pulses, or random temporary speed/slowness sways.
4. **Glitchy Interface:** Glitched indicators flashing on your actionbar displaying your active trip state.

### 🖥️ Trippy GUIs & Screen Glitches (Both Trips)
Your screen interface and vision will periodically glitch out during your high:
* **Elder Guardian Jumpscare:** A giant ghost of an Elder Guardian will flash full-screen on your GUI overlay with a ghostly sound.
* **Flashing Glitched Overlays:** Full-screen red and aqua digital glitches with warning text like `[ WARNING: SENSES CORRUPTED ]` will flash in the middle of your screen.

### 🍂 The Comedown (Withdrawal)
When the trip timer runs out, your screen clears, a low bell tolls, and you suffer a severe crash:
* **Slowness III** (15 seconds)
* **Hunger III** (20 seconds)
* **Weakness II** (15 seconds)
* **Nausea I** (10 seconds)
* Actionbar message: *The high is fading... You feel awful.*

---

## 📂 Datapack Folder Structure
The files are saved in your scratch folder at:
`C:\Users\BenGe\.gemini\antigravity-cli\scratch\trippy_datapack`

```text
trippy_datapack/
├── pack.mcmeta
└── data/
    ├── minecraft/
    │   └── tags/
    │       └── function/
    │           ├── load.json
    │           └── tick.json
    └── trippy/
        ├── advancement/
        │   ├── ate_blue_meth.json
        │   └── ate_white_meth.json
        ├── function/
        │   ├── clean.mcfunction
        │   ├── creeper_pop.mcfunction
        │   ├── eat_blue.mcfunction
        │   ├── eat_white.mcfunction
        │   ├── load.mcfunction
        │   ├── shadow_vanish.mcfunction
        │   ├── spawn_creeper_illusion.mcfunction
        │   ├── spawn_shadow_figure.mcfunction
        │   ├── tick.mcfunction
        │   ├── tick_illusions.mcfunction
        │   ├── trip_active.mcfunction
        │   ├── trip_end.mcfunction
        │   └── trip_tick.mcfunction
        └── item_modifier/
            └── make_food.json
```

---

## 🛠️ Installation Instructions

1. **Locate your Minecraft World Folder:**
   - Open Minecraft, select your world, click **Edit**, and select **Open World Folder**.
2. **Open the Datapacks Directory:**
   - Open the `datapacks` directory in your world folder.
3. **Copy the Datapack:**
   - Copy the entire folder `trippy_datapack` from `C:\Users\BenGe\.gemini\antigravity-cli\scratch\trippy_datapack` directly into the `datapacks` folder.
4. **Reload Datapacks:**
   - If you are already in the world, type `/reload` in your chat. If successful, you will see a green message: `[Trippy Datapack] Loaded successfully! ...`

---

## 🎮 Useful In-Game Commands

* **To get the items (if in Creative Mode):**
  - `/give @s createbb:white_meth 64`
  - `/give @s createbb:blue_meth 64`
* **To manually clear/stop a trip or clean up illusions:**
  - `/function trippy:clean`
* **To manually start a trip without the items:**
  - White Meth Trip: `/function trippy:eat_white`
  - Blue Meth Trip: `/function trippy:eat_blue`
