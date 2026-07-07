#import "../books/common/template.typ": *

#show: bamberg-book.with(
  title: "Bamberg Tavern",
  subtitle: "Example Scenes",
  lang: "en",
)

= Introduction

These scenes demonstrate the rules of the Bamberg Tavern RPG in action, presented as dialogues between the Game Master (GM) and the players. Each scene covers one or more core mechanics and is set in the early 17th-century city of Bamberg.

= Scene 1: The Herb Garden Chase

#line(length: 100%, stroke: 0.5pt)

#gm[You are in the sprawling gardens behind the Gärtnerstadt. Rows of liquorice plants stretch toward the river, their dark leaves rustling in the morning breeze. A travelling seed merchant, _Johann_, has hired you to find a rare cutting of sweet-root that was stolen from his cart this morning. The dew is still fresh on the beds — and there, between the raised rows, you spot muddy footprints. What do you do?]

#player("Anna")[I crouch down and examine the prints. I grew up on a farm — every morning I'd check the fields for fox tracks, rabbit holes, deer paths. I know how to read ground.]

#gm[That's a clear background. You get +1d6 from your farming experience. The soil is moist and the prints are fresh — this is a task. Roll 2d6.]

#player("Anna")[What's the difficulty?]

#gm[_(Decides secretly: difficulty 3. The prints are clear, but there are multiple overlapping trails from the gardeners who work here daily.)_ Roll and let's see what happens.]

#player("Anna")[I rolled a 2 and a 5.]

#gm[The 5 beats the difficulty — success! Anna, how do you follow the trail?]

#player("Anna")[I brush aside the liquorice leaves and trace the line of prints — they're deeper on the left side, someone carrying something heavy in their right hand. The trail leads to a gap in the wicker fence where bits of brown wool are caught on the weave. Someone squeezed through here recently.]

#gm[Excellent. Through the gap, you can see an overgrown path leading toward the old monastery garden. The prints continue.]

#example(title: "Rules Applied")[
  *Basic task resolution* with hidden difficulty. The GM set difficulty 3 secretly. Anna had 1 base die + 1 skill (farming background) = 2d6. One die showed 5, which meets the difficulty. The player narrated the successful outcome.
]

= Scene 2: The Suspicious Brewer

#line(length: 100%, stroke: 0.5pt)

#gm[You arrive at Master Albrecht's brewery near the Kranen. Steam rises from the copper vats and the air is thick with the smell of malt and hops. But you notice something unusual — dried herbs hang from the rafters that don't belong in any ordinary brewing recipe. Dark leaves, unfamiliar flowers. Friedrich, you want to take a closer look?]

#player("Friedrich")[Absolutely. I was an apothecary's apprentice for three years — I should recognise plants.]

#gm[A memory task. You have +1 from your apothecary background. Roll 2d6.]

#player("Friedrich")[3 and 2.]

#gm[_(Secret difficulty was 5 — these are exotic herbs from the Far East, well beyond a Bamberg apprentice's usual training. Friedrich failed. Rolls secretly: a 3 — misinformation.)_ Friedrich, you study the hanging bundles carefully. You rub a leaf between your thumb and finger, bring it to your nose. Yes — you're quite certain. This is a variety of Mediterranean lavender, dried for preservation. Brewers sometimes use it to flavour summer ales. Perfectly ordinary.]

#player("Friedrich")[I turn to the others. "It's just lavender. Some brewers use it for flavour — nothing unusual here."]

#gm[Friedrich's character is completely confident in this identification. The group relaxes. Whether Friedrich is _correct_... well, that remains to be seen.]

#example(title: "Rules Applied")[
  *Memory/Knowledge task* with hidden difficulty (5). Friedrich failed and the GM rolled 3 on the secret die — misinformation. Friedrich now sincerely believes the herbs are lavender. The GM presented this false information with the same confidence as truth. The player must roleplay accordingly.
]

= Scene 3: The Market Chase

#line(length: 100%, stroke: 0.5pt)

#gm[The Grüner Markt is chaos. A woman, _Margarethe_, has been publicly accused of witchcraft by the spice vendor. She's trying to flee through the crowd toward the Austraße before the Bishop's men arrive. The vendor's son, _Lorenz_, is chasing her. Margarethe — you're running for your life. Lorenz — you're pursuing. This is a *duel*.]

#player("Margarethe")[I'm small and nimble — I've spent my whole life dodging my older brothers when they were angry. I know how to weave through tight spaces.]

#player("Lorenz")[I'm strong and fast. Every morning I run sacks of pepper to the warehouse before the market opens.]

#gm[Both of you get +1 skill. Margarethe, the market is packed with bodies and carts — difficulty *4* for you. Lorenz, you're bigger and the crowd doesn't part as easily for you — difficulty *5*. Roll!]

#player("Margarethe")[2d6: 4 and 6. That's two successes!]

#player("Lorenz")[2d6: 5 and 3. One success.]

#gm[Margarethe pulls ahead! She ducks between two fish-stalls, pivots around a startled woman carrying a basket of eels, and gains a full street's length. Lorenz, the same fish-wife's basket swings into your path — you stumble, lose a step. Do you keep chasing?]

#player("Lorenz")[I shove past her. Yes, I keep going!]

#gm[Next round. Same skills, same difficulties. Roll!]

#player("Margarethe")[1 and 4. One success.]

#player("Lorenz")[5 and 2. One success.]

#gm[A tie! You're running neck and neck through the narrow alley behind the church. Margarethe's breath is ragged; Lorenz's heavy footsteps echo off the stone walls. Neither can gain ground. The alley opens onto the Austraße ahead — but you hear the clatter of the Bishop's guard approaching from that direction. Do you continue, or does something change?]

#example(title: "Rules Applied")[
  *Duel mechanics.* Each side rolled against their own difficulty. More successes wins the round. On a tie, neither gains ground, time passes (the guards approach), and both sides choose whether to continue or yield.
]

= Scene 4: The Cooperative Lift

#line(length: 100%, stroke: 0.5pt)

#gm[The stolen liquorice root was hidden in a stone cellar beneath the old monastery garden. The entrance is blocked by a massive flagstone, slick with moss and age. None of you could lift it alone — it must weigh as much as a man. This is a *group task*. Who's pushing?]

#player("Anna")[I'm in. I'm strong from years of hauling feed sacks and wrestling calves. +1.]

#player("Friedrich")[I'll find something to use as a lever — there's a fallen branch over there. That's a tool, +1.]

#player("Margarethe")[I don't have any relevant strength or tools... but I'll push anyway. Every bit helps, right?]

#gm[Right — you still contribute your base die even without a specific skill. That's 3 base dice from three characters, plus Anna's farmwork strength, plus Friedrich's lever = 5d6 total. The stone is enormous and well-set — difficulty *5*. Roll together!]

#player("Anna")[5d6: 3, 5, 2, 6, 1. The 5 and the 6 both meet difficulty 5!]

#gm[With a grinding, groaning protest, the flagstone shifts. Friedrich's branch bends dangerously but holds. Anna's muscles strain. Even Margarethe's small shoulders press against the stone. It tilts, slides, and crashes aside in a cloud of dust. Below: rough-hewn steps descending into cool darkness, and the sweet, unmistakable smell of liquorice root rising from below.]

#example(title: "Rules Applied")[
  *Group task.* All participants contribute to one combined pool. Margarethe had no relevant skill but still added her base 1d6. The group rolled together — 5d6 against difficulty 5 — and succeeded with two dice meeting the target.
]

= Scene 5: The Helpful Witness

#line(length: 100%, stroke: 0.5pt)

#gm[Friedrich, you're trying to convince the night watchman at the Malefizhaus to let you visit the prisoner. It's late, the torches gutter in the wind, and the watchman looks suspicious. This is your persuasion task — difficulty *4*. You have +1 from your educated speech. Anna, Margarethe — do you want to help?]

#player("Anna")[Yes! I'll back up his story. I'll say the prisoner is my uncle and I'm bringing him soup.]

#player("Margarethe")[I'll stand behind looking tearful and sympathetic — maybe that softens the watchman's heart.]

#gm[Good. Let's use different colours for the dice. Friedrich — take the white dice for your 2d6. Anna — take a blue die for your help. Margarethe — take a red die for yours. Remember: help dice are risky. Roll them separately so we can see which is which.]

#player("Friedrich")[White dice: 4 and 5.]

#player("Anna")[Blue die: 3.]

#player("Margarethe")[Red die: 1.]

#gm[Stop. We check help dice first. Margarethe's red die shows *1* — that's a catastrophe. The entire task fails automatically, no matter what Friedrich rolled. Margarethe, what goes wrong?]

#player("Margarethe")[I'm trying to look tearful, but I overdo it — I actually start crying and blurt out, "Please, you have to let us see him, he's innocent!" The watchman's expression hardens: "Innocent? That's for the court to decide. And no one visits without the Bishop's seal. Get out — all of you — before I add your names to the list."]

#gm[The iron gate slams shut. The torch sputters. You'll need another way to reach the prisoner.]

#example(title: "Rules Applied")[
  *Helping mechanic.* The GM instructed players to use different-coloured dice before rolling. Each helper contributes exactly 1 die. Help dice are checked first: Margarethe's die showed 1, which means the entire task fails automatically regardless of Friedrich's successful rolls. The helper narrates the disaster.
]

= Scene 6: The Burning and the Escape

#line(length: 100%, stroke: 0.5pt)

#gm[The Domplatz at midnight. A pyre is being built for tomorrow's dawn — you can see the bundles of kindling stacked high, the stake rising like a dark finger against the stars. The innocent gardener is locked in a cell beneath the Bishop's residence. You have hours, not days. Friedrich, the cell door has a formidable iron lock. What do you have?]

#player("Friedrich")[I have the lockpicks I took from that thief two sessions ago. That's a tool — +1.]

#gm[Good. But lockpicking without any training or experience would normally be impossible. Do you have any background?]

#player("Friedrich")[Yes! A locksmith, old Meister Wendel, showed me how picks work once when I was curious about his trade. I watched him open three locks and he let me try one. It's an established background — I wrote it down last session.]

#gm[That gives you +1 background. Lockpicks +1 tool. That's 3d6 total. The lock is excellent craftsmanship — difficulty *5*. Tough odds...]

#player("Friedrich")[Wait — can I use my inspiration die? I earned it last session for the trial scene.]

#gm[You may! That's +1 more — 4d6 total. The inspiration die is consumed after this roll, regardless of outcome. You can feel the weight of the moment — this is what that die was waiting for.]

#player("Friedrich")[4d6: 2, 5, 1, 4. The 5 hits!]

#gm[_Click._ The lock yields under your careful hands. Friedrich — describe the moment.]

#player("Friedrich")[My hands are shaking, but I close my eyes and hear old Wendel's voice: "Feel for the pins, lad. Gentle. Patient." I breathe out slowly... and there it is. The last tumbler falls into place with a soft, satisfying _snick_. The door swings inward. The gardener looks up from the straw, eyes wide with disbelief.]

#gm[Your inspiration die is gone — spent in that perfect moment of focus. But the cell is open.]

#example(title: "Rules Applied")[
  *Tools* (+1 for lockpicks) and *established background* (+1 for locksmith training) and *inspiration die* (+1, consumed after use). Total 4d6. The inspiration die represents a moment of exceptional focus or clarity, earned through previous excellent roleplaying.
]

= Scene 7: Rooftop Practice

#line(length: 100%, stroke: 0.5pt)

#gm[It's the next morning. Pale sunlight slants through the garden mist. Anna, the seed merchant is frantic again — someone has been trampling his seedbeds overnight, crushing the young shoots. He begs you to find the culprit. You see fresh footprints in the soft soil between the rows.]

#player("Anna")[Same as yesterday — I follow the tracks. Farm girl, remember? And now I have practice from yesterday's successful tracking too.]

#gm[Let's count: +1 farming background, +1 practice from yesterday's success. That's 3d6 total. The prints are clear in soft earth — I'd set difficulty 3 normally. But you know what? With 3d6 against difficulty 3, success is almost certain. I'll rule this *automatically succeeds*. You don't need to roll — your skill has grown beyond the challenge. Anna, describe how you effortlessly read the ground.]

#player("Anna")[I barely break stride. The prints tell me everything — heavy boots, a drag mark on the left (carrying something), deeper impressions near the cabbage bed (they stopped to pull something up). The trail leads straight to the compost heap behind the old wall. I point silently and start walking.]

#gm[No hesitation, no uncertainty. The ground speaks to you now like a familiar language.]

#example(title: "Rules Applied")[
  *Practice bonus:* Anna succeeded at tracking yesterday, so today she gains +1 from practice. Combined with her farming background, she has 3d6. The GM judged that 3d6 vs. difficulty 3 makes failure negligible and declared *automatic success* — no roll required.
]

= Scene 8: The Charlatan's Excuse

#line(length: 100%, stroke: 0.5pt)

#gm[You've cornered Förner's assistant in the cathedral sacristy. He's backed against the vestment cabinet, sweating, eyes darting toward the door. He knows where the evidence is hidden. Margarethe — you want to make him talk?]

#player("Margarethe")[I grab him by the collar and hiss: "Tell me where the book is, or I'll tell Förner you've been stealing communion wine!"]

#gm[That's bold. But let me consider: is this _possible_? He's more terrified of Förner than of you. A bluff without real evidence behind it... that's not going to crack him. You need actual leverage — something real. Without it, this is in the "possible but missing something" category. Do you have anything concrete?]

#player("Margarethe")[The communion wine! I actually _saw_ him sneaking a bottle last Tuesday — I watched him from behind the pillar!]

#gm[Now you have real evidence — that's a legitimate background skill: "I witnessed his theft." That makes this possible. But there's more here. Why does Margarethe care _this_ much? Why is she this desperate?]

#player("Margarethe")[My mother was accused of witchcraft when I was ten. She fled in the night — I never saw her again. Every time I see someone dragged toward the Malefizhaus, I see my mother's face. I will _not_ let another innocent person burn.]

#gm[That's deep, genuine motivation rooted in backstory. +1 for real evidence, +1 for motivation. Difficulty *5* — this man is terrified of Förner, and Förner is far more dangerous than you. You roll 3d6.]

#player("Margarethe")[6, 4, 5. The 6 and 5 both beat 5!]

#gm[His face goes chalk-white. His knees buckle slightly. "The crypt," he whispers, barely audible. "Behind the third pillar on the left. There's a loose stone — the book is wrapped in oilcloth behind it. But you didn't hear it from me. _Please_ — you didn't hear it from me."]

#example(title: "Rules Applied")[
  *"Possible but missing something"* ruling: the GM required at least one justified skill before allowing the roll. *Motivation* (+1): deeply personal stakes from character backstory. The GM judged difficulty based on the situation (the target's fear of Förner), not Margarethe's abilities.
]

= Scene 9: The Narration of Failure

#line(length: 100%, stroke: 0.5pt)

#gm[Friedrich, the monastery wall blocks your path to the back garden. Old stone, rough-hewn, but the recent rain has left it slick with moss. Difficulty *4*. No climbing background, no tools — just your base 1d6. Do you attempt it?]

#player("Friedrich")[I have to. There's no other way around. 1d6... here goes.]

#gm[Roll!]

#player("Friedrich")[A 2. Of course.]

#gm[Failure. Friedrich — the fiction is yours. How does the wall beat you?]

#player("Friedrich")[I find a crack between two stones, pull myself up — for a moment I'm actually climbing, arms trembling with effort. Then my boot finds the moss. It's like stepping on ice. My foot shoots sideways, my fingers lose their grip, and I slide back down in a shower of grit and green slime. I hit the ground sitting, palms raw and stinging, looking up at the wall that just defeated me.]

#gm[Your hands sting, your pride stings more. The wall stands unconquered. But you notice something — there's a vine growing on the far side that might bear your weight. A second attempt would be different circumstances...]

#example(title: "Rules Applied")[
  *Player narrates the outcome.* After the GM determines success or failure mechanically, the player describes _how_ it happens in the fiction. The GM may add context or consequences (the vine offering a new approach), but the core narration of Friedrich's experience belongs to the player.
]

= Scene 10: The Gardener's Duel

#line(length: 100%, stroke: 0.5pt)

#gm[The compost heap conceals a tunnel entrance — you duck inside and find a low, earthen passage smelling of rot and dark soil. At the far end, a figure: old _Kaspar_, the retired gardener. He has the stolen liquorice root bundle tucked under one arm and he's heading for a back exit. Anna, you're blocking his path. He sees you and lowers his shoulder to push past. This is a *duel*.]

#player("Anna")[I plant my feet and brace. I'm strong from farmwork — that's +1. And I've been in scuffles with livestock — established background from the cattle scene last week — +1.]

#gm[Kaspar is old but wiry — a lifetime of digging gives him surprising strength. +1 for him. The tunnel is narrow — difficulty *3* for both. Roll!]

#player("Anna")[3d6: 4, 3, 1. Two successes — the 4 and 3 both meet difficulty 3.]

#gm[Kaspar rolls 2d6: 5 and 2. One success. Anna wins the first round! She holds her ground — Kaspar bounces off her like he hit a wall. How do you describe it?]

#player("Anna")[I catch his charging shoulder with both hands, dig my heels into the packed earth, and shove him stumbling backward. "Not today, Kaspar!"]

#gm[He staggers back but doesn't fall. His eyes dart to the wall — there's a gardening fork hanging from a nail. He snatches it. That's a *tool* — +1 for him next round. Anna, the tunnel wall has a wooden rake leaning against it...]

#player("Anna")[I grab it! +1 tool for me too!]

#gm[Now you're both armed with garden implements in a narrow tunnel. Difficulty stays at 3. Anna has 4d6, Kaspar has 3d6. New round — roll!]

#player("Anna")[4d6: 6, 3, 5, 2. Three successes!]

#gm[Kaspar: 3d6: 1, 3, 4. Two successes. Anna wins again! She hooks the fork with her rake and yanks it from his grip — it clatters against the tunnel wall. Kaspar, disarmed and outmatched, drops the liquorice root bundle and raises his trembling hands.]

#player("Anna")["That doesn't belong to you, old man." I pick up the bundle and back toward the exit, keeping one eye on him.]

#gm[He sinks against the wall, breathing hard. "It _should_ belong to me," he mutters. "I planted the first sweet-root in this garden forty years ago..." But he doesn't try to fight again. You have the liquorice root.]

#example(title: "Rules Applied")[
  *Extended duel* over multiple rounds. Between rounds, both sides acquired tools (+1 each), increasing their dice pools. The GM kept difficulty constant since the terrain didn't change. Anna's superior skill count (4d6 vs 3d6) gave her a consistent advantage. Each round's winner narrates their triumph.
]

= Rule Coverage Summary

#table(
  columns: (1fr, auto),
  [*Rule*], [*Scene(s)*],
  [Basic task resolution (difficulty + skills)], [1, 2],
  [Hidden difficulty], [1, 2],
  [Skills from background], [1, 3, 5, 6],
  [Memory/Knowledge (misinformation)], [2],
  [Duel mechanics], [3, 10],
  [Tied duel / time passes], [3],
  [Group tasks (combined pools)], [4],
  [Helping (risk on 1 and 2)], [5],
  [Different-coloured help dice], [5],
  [Inspiration dice], [6],
  [Skills from tools/items], [6, 10],
  [Practice / repetition bonus], [7],
  [Automatic success], [7],
  [Impossible/possible-but-missing rulings], [8],
  [Motivation as skill], [8],
  [Player narrates outcome], [9],
  [GM adjusts difficulty mid-duel], [10],
  [All 6s / All 1s], [GM book examples],
  [Spectacular/catastrophic results], [GM book examples],
)
