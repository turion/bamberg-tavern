#import "../../common/template.typ": *

#show: bamberg-book.with(
  title: "Bamberg Tavern",
  subtitle: "Game Master's Guide",
  lang: "en",
)

= Welcome, Game Master <intro>

You hold in your hands the complete rules for _Bamberg Tavern_ — a tabletop role-playing game that invites players to lose themselves in the living, breathing city of Bamberg, circa 1620. Every cobblestone alley, every bubbling brew-kettle, every whispered accusation is yours to bring to life.

_We want to enable people to immerse themselves in historical Bamberg._

This is the heart of everything that follows. The rules exist to serve immersion — they are fast to resolve, light on bookkeeping, and designed to stay out of the way so that the story flows. There are no sprawling stat blocks to look up, no complex calculations to interrupt a tense moment. When a player wants their character to attempt something — anything they can imagine a real person might try in 1620s Bamberg — the rules give you a quick, elegant way to find out what happens, and then everyone dives back into the fiction.

Your role is a gift and a joy: you set the stage, you breathe life into the city's inhabitants, you decide what is easy and what is perilous — and then you step back and let the players surprise you with their creativity. The rules are your instruments; play them with flair.

#figure(
  image("../../common/zweidler-plan.jpg", width: 90%),
  caption: [The Zweidler Plan of Bamberg (1602) — the city at your fingertips.],
)

== Why These Rules? <design-philosophy>

We want players to _be_ their characters — to smell the liquorice fields, to feel the cold stone of the Malefizhaus, to argue passionately before the Bishop's court. Everything in this system is designed toward that goal:

- *Speed:* Resolving a task takes seconds. Roll dice, compare to a number, narrate. No one breaks immersion to flip through tables or add modifiers.
- *Openness:* There are no rigid character classes or predetermined skill lists. If a player can imagine their character doing it, and it makes sense in the fiction, they can try. The rules never say "your character sheet doesn't allow that."
- *Narrative ownership:* Players describe their own successes and failures. The story belongs to everyone at the table, not just the GM.
- *Lightness:* The entire core mechanic fits on a single page. You can teach a new player in two minutes and start playing immediately.

The result: more time living in Bamberg, less time wrestling with mechanics.

= Core Mechanics <core>

== The Task Roll <task-roll>

When a player character attempts something where both success and failure would be interesting, you call for a task roll.

#rule-box[
  + Determine if the task is *possible* — and what kind of ruling applies.
  + Set the *difficulty* (2–6).
  + Count the character's *skills* (each applicable skill = +1d6).
  + The player rolls their dice pool (1 base die + skill dice).
  + If *at least one die ≥ difficulty*, the task *succeeds*.
  + The *player narrates* the outcome.
]

=== Step 1: Is It Possible? <rulings>

Before any dice hit the table, make one of four rulings. These are listed from easiest to hardest:

#table(
  columns: (auto, 1fr, 1fr),
  [*Ruling*], [*Meaning*], [*Example*],
  [Automatic success], [Succeeds without a roll — the outcome is certain], [Opening an unlocked door; walking down a familiar street],
  [Standard task], [Roll against a stated difficulty], [Tracking footprints in soft earth; persuading a cautious merchant],
  [Possible but missing something], [The task _can_ be done, but the character needs specific preparation, tools, or knowledge to even attempt it], [Trying to work a stone: needs a chisel or masonry experience. Trying to plant a rare seed: needs gardening knowledge],
  [Impossible], [Cannot be attempted — no roll, no discussion, until circumstances fundamentally change], [Lifting a house with bare hands; reading a book that doesn't exist],
)

The distinction between "possible but missing something" and "impossible" is crucial. "Possible but missing something" means the task _could_ succeed with the right preparation — the player needs to acquire a tool, learn a skill, or change the situation before they can roll. "Impossible" means no preparation within the current fiction would help.

#example(title: "Ruling in Play: The Stone Wall")[
  #gm[You want to chisel an inscription into the stone? That's a task that requires either a proper tool — a chisel, a sharp knife — or experience working stone. Without one of those, I can't let you roll. Do you have anything like that?]

  #player("Friedrich")[I have the iron nail I pulled from the stable door earlier!]

  #gm[A nail... it's crude, but I'll allow it as a basic tool. You can attempt it — difficulty 4, since stone is unforgiving. Roll!]
]

=== Step 2: Setting Difficulty <difficulty>

Difficulty reflects the *situation and the world*, never the character. A slippery wall is difficulty 5 whether a nimble thief or a clumsy scholar attempts the climb. Consider:

- Weather and lighting
- Time pressure
- Quality of tools or obstacles
- How unusual or delicate the task is

The difficulty does _not_ automatically default to any value — you judge each situation individually based on how hard it would be for _anyone_ facing those exact circumstances.

*Hidden difficulty:* For memory and knowledge tasks, you may keep the difficulty secret. The player simply rolls without knowing the target number. This is also useful for perception tasks ("Do I notice the figure in the shadows?") or investigation tasks where the characters wouldn't know how hard the puzzle truly is. See @memory for full details.

*Different difficulties in a duel:* Each side of a duel may face a different difficulty based on their individual circumstances. See @duels.

=== Step 3: Counting Skills <skills>

Skills come from the player's proposal, validated by your judgment. This is the engine of the game — the place where players engage creatively with their characters' histories and the fiction. Encourage them to think laterally and propose surprising connections. For timid, forgetful, or new players, you may gently prompt: "Remember, you have that shovel in your bag — would that help here?" or "Didn't your character grow up near a river?"

Each distinct, justified skill adds *+1d6* to the pool. Multiple sources can and should stack — this is how characters become competent at the things they've invested in. A character with a relevant background, a good tool, and practice from yesterday might roll 4d6. That's not a corner case; that's the system working as intended.

Sources of skills:

+ *Background (established):* A skill the player has used before and written on their character sheet. It applies automatically in similar situations — no need to re-justify it each time. Example: "I grew up on a farm" grants +1 for physical labour tasks once established.

+ *Background (new):* The player proposes something new from their character's history. It must be narratively plausible — "I was a blacksmith's apprentice" is fine if nothing contradicts it. You approve or reject. Once accepted, the player writes it down and it becomes established.

+ *Tools:* A relevant physical item grants +1. Exceptionally fine or specialised tools (a master locksmith's picks, a surgeon's scalpel) may grant +2 at your discretion. Improvised tools (a bent nail as a lockpick) still grant +1 but you might increase the difficulty.

+ *Practice:* After a character succeeds at a task for the first time, they gain +1 for similar tasks from the _next day_ onward. Additional +1 at 10 cumulative successes, +1 at 100, and so on. Practice represents growing muscle memory and confidence.

+ *Related background:* A previously established skill that plausibly transfers. "I can run fast" → "I can jump far." "I know herbs" → "I can identify this strange plant." You decide whether the connection is close enough.

+ *Roleplaying:* For social, artistic, or persuasive tasks, genuinely compelling in-character performance earns +1. The player who delivers a passionate speech _as their character_ deserves mechanical reward. This encourages the table to stay in character.

+ *Motivation:* +1 if the player explains deep personal stakes rooted in their character's backstory. "My mother was accused of witchcraft — I will _not_ let this happen again" is powerful motivation that lends desperate strength.

*How many skills can stack?* There is no hard cap, but each skill must have a _distinct_ justification. "I'm strong AND I'm very strong" is one skill, not two. "I'm strong from farmwork (+1) AND I have a crowbar (+1) AND I've done this before (+1)" is three legitimate skills.

*Contradictory backgrounds:* If a player has established "I'm afraid of heights" and later wants to claim climbing skill, you may require them to reconcile the contradiction through story — perhaps a dramatic moment of overcoming their fear.

#example(title: "Skills in Action: The Lock")[
  #gm[Friedrich, you want to pick the lock on the cellar door. What do you bring to this?]

  #player("Friedrich")[I have lockpicks — that's a tool, +1. And I had it shown to me by a locksmith once when I was curious about his trade — that's an established background, +1. Oh, and I want to spend my inspiration die!]

  #gm[Lockpicks, the locksmith's teaching, and your moment of inspired focus. That's 4d6 total — your base die plus three skills. The lock is old but sturdy: difficulty 4. Roll!]

  #player("Friedrich")[4d6: 1, 3, 4, 6. The 4 and 6 both hit!]

  #gm[The lock clicks open with a satisfying _snick_. Two successes — that's clean work. Friedrich, describe how you do it.]

  #player("Friedrich")[I close my eyes for a moment, remembering old Meister Wendel's hands on the picks. 'Feel for the pins,' he said. I breathe... and there it is. The last tumbler falls into place.]
]

#example(title: "Total Failure: All Ones")[
  Imagine Friedrich had rolled 1, 1, 1, 1 — every single die showing a 1. That's not merely failure; it's catastrophe. The lockpick snaps inside the mechanism, jamming it permanently. Or Friedrich's fingers slip and he cuts himself on a sharp metal edge, drawing blood and alerting someone with the noise.

  When _every die_ shows a 1, something goes memorably, painfully wrong beyond simple failure. A tool breaks, an injury occurs, the situation worsens dramatically.
]

=== Step 4: The Roll <the-roll>

The player rolls their full dice pool. You never roll for player characters — the dice belong to them. (The sole exception: the secret memory die on failed knowledge checks. See @memory.)

=== Step 5: Reading Results <results>

- *Any die ≥ difficulty:* Success. The task is accomplished.
- *All dice < difficulty:* Failure. The task does not succeed.
- *All dice show the maximum (6):* Spectacular success! Something extra-good happens beyond the intended outcome — a bonus discovery, an impressed onlooker, a stroke of fortune. Narrate generously.
- *All dice show 1:* Catastrophic failure. Something goes badly wrong beyond simple failure — a tool breaks, an injury occurs, the situation worsens. See the example above.
- *Multiple successes (but not all 6s):* Generally a cleaner, more impressive success — more information, better execution, an extra benefit. Use judgment.

=== Step 6: Player Narration <narration>

The player describes how their character succeeds or fails. You may add environmental reactions, consequences, or NPC responses, but the core description of the character's action belongs to them.

There is some leeway here, and it depends on player personality. Some players relish narrating their own disasters: "I cut my finger on the sharp metal and yelp!" Others prefer a briefer "I fail" and need you to fill in the fiction to keep things moving. Both are fine. Read your table and adjust — sometimes you narrate more, sometimes you step back. The goal is always forward momentum and immersion.

*If a player narrates something contradicting the mechanics:* Gently redirect. "That's a vivid description! But since you failed, the wall doesn't yield. How does it go wrong instead?"

#example(title: "Player Narration in Action")[
  #gm[You rolled a 2 against difficulty 4 — the mossy wall defeats you. How does it go wrong?]

  #player("Friedrich")[I get halfway up, find what I think is a solid handhold — but it crumbles away. Wet moss and grit shower down as I slide back to the ground, palms scraped raw.]

  #gm[Perfect. Your hands sting, your pride stings more. The wall stands unconquered... for now.]
]

== Inspiration Dice <inspiration>

Inspiration is your way of rewarding the moments that make the game sing — the flash of brilliance, the scene that gives everyone goosebumps, the joke that brings the whole table to tears of laughter.

Award an inspiration die for:
- A moment of truly memorable roleplaying
- A clever solution you never saw coming
- An action that makes the table gasp or erupt in laughter
- A sacrifice or decision that deepens the story

*Rules:*
- A player can hold *one* inspiration die at a time.
- It can be spent on *any* future roll as +1d6.
- Once spent, it is gone.
- It cannot be given to another player.
- The player should keep this die separate — perhaps a different colour — so everyone can see who holds inspiration.

#example(title: "Awarding Inspiration")[
  #player("Friedrich")[_(standing up from the table, speaking in character)_ "I became an apothecary because my father died of a fever no one could treat. Every herb I learn, every tincture I brew — it's for him. I won't let another family lose someone to ignorance."]

  #gm[_(after a moment of silence at the table)_ That was genuinely moving. Take an inspiration die — you've earned it. Keep it somewhere visible; you'll know when the moment comes to use it.]
]

== Retrying Failed Tasks <retries>

A character may attempt a failed task again, but *time passes* and *circumstances change*. The wall is still there, but now the patrol is closer. The lock resists, but now your companion is growing impatient. Each retry should feel different — increased stakes, a new approach, or worsening conditions.

*Practice bonus:* A successful task today grants +1 from the _next day_ onward. Not immediately — the skill needs time to settle into the character's bones.

*New day:* A new day of game time activates all practice bonuses earned the previous day.

= Duels <duels>

== When to Use a Duel

Use duels whenever two characters pursue *opposing* goals simultaneously — whenever there's active resistance from a thinking opponent. Chases through market crowds, sword-fights in muddy alleys, arm-wrestling contests over tankards of ale, heated debates before a crowd, races along the riverbank, tug-of-war over a stolen satchel.

Do *not* use duels when:
- One side is unaware (use a standard task — e.g., sneaking past a sleeping guard).
- The opposition is passive or environmental (use a standard task — e.g., swimming against a current).

== Duel Procedure <duel-procedure>

+ Set difficulty for *each* side independently, based on their circumstances.
+ Each side counts their applicable skills.
+ Both sides roll simultaneously.
+ Compare *number of successes* (dice ≥ respective difficulty).
+ Whoever has more successes wins the round.
+ The winner narrates their triumph; the loser narrates their setback.

*Asymmetric difficulty:* A heavy character shoving through a narrow alley (difficulty 5) vs. a small, nimble character (difficulty 3). Both roll, but the small character's successes come more easily — the world favours them in this moment.

*One side has no skills:* They roll 1d6. They're at a disadvantage, but a lucky roll can still surprise everyone.

== Ties <duel-ties>

On a tie, neither side gains ground. But the world doesn't stand still:
- *Time passes.* Make this meaningful in the fiction: guards draw nearer, rain begins to fall, a witness rounds the corner, a candle gutters out.
- Each side chooses: *continue* or *yield*.

If ties repeat and the scene stalls, you may change circumstances to break the deadlock — terrain shifts, fatigue sets in (increase difficulty by 1 for both), or an outside force intervenes. This is a suggestion for good pacing, not a hard rule; use as many rounds as the scene demands.

== Multi-Round Duels <multi-round>

Between rounds you may:
- Allow characters to grab tools or weapons (+1).
- Adjust difficulty if terrain changes.
- Introduce a meaningful choice: "You can keep the bread (difficulty +1) or drop it and focus on running."
- Require a *separate task* before the next duel round (e.g., leaping over a toppled cart).

*Intervening tasks:* A character mid-chase might need to vault a wall (separate task, difficulty 4). If they fail, you decide the consequence — perhaps the opponent gains a head start worth 1 automatic success in the next duel round.

*Yielding:* A character who yields can propose terms ("I'll drop the bread if you let me go"). The other side is not obliged to accept.

== Combat as Duels <combat>

Combat is simply duels with lethal stakes. The same procedure applies, with these additions:

- *Defeat:* Losing a combat duel means being *out of action* for that encounter. Unlike in many other pen-and-paper games, there are no hit points in Bamberg Tavern.
- *Stages:* Important NPCs or bosses may have 2–3 stages — they must lose that many duels before being truly defeated. Each stage represents a dramatic shift in the encounter: the first blow springs the breastplate, the second draws blood and the enemy staggers, the third brings them to their knees. Make each stage feel meaningfully different.
- *Weapons as tools:* A weapon grants +1 (or more for exceptional weapons).
- *Armour:* May increase the opponent's difficulty to hit, or grant +1 defensive skill.

*Ill-fitting armour:* A suit found in a cellar might grant +1 defence but impose +1 difficulty on all movement tasks — it clanks and binds.

*Multiple attackers:* Treat as a group duel. Each attacker rolls individually against the defender. The defender rolls once against the highest-skill attacker. Compare total successes of each side.

#example(title: "A Duel Comes to Life: The Bread Chase")[
  _Katharina is a player character. Helmut is an NPC, played by the GM._

  #gm[The Grüner Markt is chaos — fish-sellers shouting, a cart of cabbages overturned. You see Helmut grab a loaf from the baker's stall and bolt into the crowd. Katharina, what do you do?]

  #player("Katharina")[I chase him! I've been dodging my older brothers my whole life — I'm quick on my feet.]

  #gm[A chase through the market! This is a duel. Katharina, you're nimble and small — difficulty 3 for you. Helmut is fast but the crowd is thick and he's carrying bread — difficulty 4 for him. You have +1 from your "quick on my feet" background. Helmut has +1 from street-running. Roll!]

  #player("Katharina")[2d6: 5 and 2. One success!]

  #gm[Helmut rolls 2d6: 4 and 3. One success as well. _A tie!_ You're both weaving through the crowd, neck and neck. Market-goers curse and dodge. A woman drops her basket of onions and they roll everywhere. Neither of you gains ground. Do you keep chasing?]

  #player("Katharina")[Absolutely. I shout "Stop, thief!"]

  #gm[Round two. Same skills, same difficulty — but now Helmut makes a choice. He tries to knock over a display of clay pots to block your path. That's a separate task for him: difficulty 3, he rolls... 5. Success! Shards of pottery scatter across the cobbles.]

  #gm[Katharina, you need to leap over the debris. Separate task: difficulty 4. You have your "nimble" background. Roll 2d6.]

  #player("Katharina")[4 and 6! I clear it!]

  #gm[You vault over the wreckage like a cat, barely breaking stride. The crowd gasps. Now — back to the duel. Roll!]

  #player("Katharina")[2d6: 6 and 3. Two successes!]

  #gm[Helmut: 2d6: 2 and 4. One success. You've got him! You're gaining fast — his bread-arm is slowing him down. What do you do?]

  #player("Katharina")[I tackle him into the pile of cabbages!]

  #gm[New duel — a grapple! Helmut has a choice: keep the bread (+1 difficulty for him, since one arm is occupied) or drop it. He clutches the bread. Roll!]

  #player("Katharina")[2d6: 3 and 5. Two successes against difficulty 3!]

  #gm[Helmut, encumbered: 2d6 against difficulty 5... 3 and 2. Zero successes. You slam into him and he goes down in a shower of cabbage leaves. The bread flies from his hand and you catch it — still warm. The baker cheers from across the square.]
]

= Memory, Knowledge & Research <memory>

== The Rule

When a character tries to recall a fact, research a document, solve a puzzle, or extract information from a conversation, you use the memory mechanic. This is one of the most distinctive features of Bamberg Tavern — it means that players can never be entirely certain their character's knowledge is correct.

+ Set difficulty (often *hidden* — the player doesn't know how hard the question is).
+ Count skills (scholar background, familiarity with the subject, relevant tools like books or notes).
+ The player rolls.

*On success:* The character learns the correct information. Multiple successes may yield bonus details — deeper context, related facts, implications.

*On failure:* You roll 1d6 *secretly*:
- *1–2:* The character draws a blank. Say: "Nothing comes to mind" or "The text seems impenetrable."
- *3–4:* The character receives *misinformation* — and _believes it completely_. Present false information with the same confidence as truth.
- *5–6:* The character receives the *truth* despite failing. Present it identically to a success.

#rule-box[
  The player *never* knows which failure outcome occurred. From their perspective, all three look identical. This is the heart of the mechanic: knowledge is uncertain, memory is fallible, and players must act on information they cannot fully trust.
]

This mechanic is particularly powerful for:
- Identifying herbs, potions, or substances
- Recalling historical facts or rumours
- Researching in the library or archives
- Recognising a stranger's face
- Translating an old text
- Reading a person's intentions (are they lying?)

*Player metagaming:* If a player acts on out-of-character suspicion that information might be false, gently remind them: "Your character is _certain_ about this. Friedrich genuinely believes these are lavender blossoms."

*Multiple characters, same question:* Each rolls independently. They might get contradictory answers — and that's wonderful! Let the characters debate in-fiction. "I'm telling you, these are nightshade!" "Nonsense, it's clearly lavender!"

*Impossible knowledge:* Sometimes a question has no answer because the information simply doesn't exist in the world. You may secretly roll for this too — the group attempts a search with hidden difficulty, and no matter how well they roll, they cannot succeed because the information isn't there.

#example(title: "A Scene of Misinformation")[
  #gm[On the table before you lies a small bundle of mysterious dried herbs, tied with rough twine. Friedrich, you want to identify them?]

  #player("Friedrich")[Yes! I was an apothecary's apprentice — I should know plants.]

  #gm[That gives you +1 from your background. Roll 2d6. _(Secret difficulty: 5 — these are very unusual herbs from a foreign land.)_]

  #player("Friedrich")[I rolled a 3 and a 4.]

  #gm[_(Both below 5 — failure. Rolls secretly: a 3 — misinformation.)_ Friedrich, you turn the bundle over in your hands, rub a leaf between your fingers, sniff it carefully. Yes — you're certain. This is dried lavender, the kind used in calming tinctures. Perfectly harmless.]

  #player("Friedrich")[Great! I tell the others: "It's just lavender, nothing to worry about. Probably for brewing a sleeping draught."]

  #gm[The group relaxes. Friedrich's character genuinely believes this. Whether it's _true_... well, that remains to be seen.]

  _Rules applied: Memory task with hidden difficulty. Friedrich failed and the GM rolled 3 on the secret die, resulting in confident misinformation. Friedrich's player must roleplay as if the information is certainly correct._
]

#example(title: "Impossible Knowledge: Searching for What Isn't There")[
  The group searches a house for bread. You secretly decide: there _is_ no bread here. You set difficulty 3 and roll yourself — you get a 2, confirming the house is empty. The group searches as a group check against a hidden difficulty. No matter what they roll, they find nothing — but they don't know whether they failed to find bread that exists, or whether the bread simply isn't there.
]

= Group Tasks & Helping <group>

== Group Tasks

When characters work *together* toward a single shared goal — lifting a flagstone, hauling a cart, searching a room — they combine their efforts into one mighty roll.

- Pool all participants' base dice and all applicable skills into *one* combined pool.
- Set *one* difficulty for the group.
- The group rolls once, together.
- They succeed or fail as one.

A character with no relevant skill still contributes their base 1d6 — every pair of hands helps, even untrained ones. However, participation is a _choice_. A player may decide their character stands back, watches, or does something else entirely. Not everyone must join every group task.

*Group memory task:* When multiple people try to remember something together, pool their skills. On failure, the misinformation roll affects the _whole_ group — they all receive the same (possibly false) information and believe it together.

#example(title: "Group Task: The Flagstone")[
  #gm[The entrance to the old cellar is sealed by a massive flagstone, slick with moss. None of you could shift it alone. Who's helping?]

  #player("Anna")[I'll push. I'm strong from years of farmwork — that's +1.]

  #player("Friedrich")[I'll find a branch to use as a lever. That's a tool — +1.]

  #player("Margarethe")[I... I don't think I have anything useful here. But I'll push anyway!]

  #gm[Everyone contributes. Three characters = 3 base dice, plus Anna's farmwork, plus Friedrich's lever = 5d6 total. The stone is enormous — difficulty 5. Roll!]

  #player("Anna")[5d6: 2, 5, 3, 6, 1. The 5 and 6 both hit!]

  #gm[With a grinding groan, the flagstone shifts, tilts, and slides aside. Cool, damp air rushes up from below, carrying the sweet scent of old earth and something else — something faintly sweet. Liquorice root.]
]

== Helping <helping>

Sometimes only *one* character performs the action — picking a lock, persuading a guard, translating a text — while others lend support. This is different from a group task: helpers add risky bonus dice rather than pooling fully.

- Each helper adds exactly *1 die* to the main character's pool — regardless of the helper's own skills. Their expertise is abstracted into that single die.
- Help dice carry *critical risk*:
  - *Help die shows 2:* That helper's contribution fails silently. Remove their die — it contributes nothing.
  - *Help die shows 1:* Disaster! The *entire task fails* automatically, no matter what the other dice show. The helper narrates how their assistance goes catastrophically wrong.

*Procedure:*
+ Announce which dice belong to whom. Use different-coloured dice for helpers, or roll them separately.
+ The GM instructs players to use distinguishable dice _before_ anyone rolls.
+ Check help dice *first*:
  - Any 1? → The whole task fails immediately. The helper whose die showed 1 describes the disaster.
  - Any 2? → Remove those dice; they contributed nothing.
+ Then evaluate the remaining dice normally against the difficulty.

*Multiple helpers:* Each adds 1 die. Each is checked independently. If _any_ help die shows 1, the whole task fails.

*Help in a duel:* A helper can assist one side of a duel with the same rules (1 die, same risk of 1 or 2).

#example(title: "Helping Gone Wrong")[
  #gm[Friedrich is trying to convince the night watchman to let you into the cells. Friedrich, your educated speech gives you +1. Difficulty 4. Anna and Margarethe — do you want to help?]

  #player("Anna")[Yes! I'll back up his story — I'll say the prisoner is my uncle.]

  #player("Margarethe")[I'll stand behind looking tearful and sympathetic.]

  #gm[Good. Use different-coloured dice so we can tell them apart. Friedrich rolls his 2 dice — white. Anna's help die — blue. Margarethe's help die — red. Roll!]

  #player("Friedrich")[White: 4, 5. Blue (Anna): 3. Red (Margarethe): 1.]

  #gm[Stop. Margarethe's help die is a *1* — the entire task fails, no matter what. Margarethe, what goes wrong?]

  #player("Margarethe")[Oh no... I burst into tears too convincingly. The watchman says "Why are you _really_ crying?" and I stammer and accidentally mention Friedrich's real name instead of the cover story. The watchman's eyes narrow.]

  #gm["You're lying. All of you. Get out before I arrest you too." He slams the iron gate shut. You'll need another way in.]
]

= The City of Bamberg <bamberg>

Bamberg in the 1620s is a city of contrasts — prosperity and paranoia, beauty and cruelty. The Prince-Bishop holds temporal and spiritual power. The gardens bloom with exotic plants brought from distant lands. And in the shadow of the cathedral, the witch trials are gathering momentum.

Key locations on the Zweidler Plan:
- *Grüner Markt:* The green market — heart of daily life, gossip, and trade.
- *Gärtnerstadt:* The gardeners' quarter — plots of liquorice, vegetables, herbs, and flowers.
- *The Cathedral (Dom):* Seat of the Prince-Bishop's power.
- *The Kranen:* Riverside crane and bustling port area.
- *Malefizhaus:* The witch prison — a place of dread.

Languages you may encounter:
- *Latin:* Language of scholars, clergy, and the law.
- *Yiddish:* Spoken in the Jewish community.
- *French:* Language of diplomacy and some merchants.
- *Rotwelsch:* Thieves' cant — the secret tongue of the underworld.

Characters who know these languages can communicate secretly. Understanding requires the appropriate background.

== The Zweidler Plan <the-map>

The physical map of Bamberg is available to players at the table. It is not merely decorative — it is a living tool:

- Players may examine it to plan routes through the city.
- They may argue for shortcuts: "Look, there's clearly an alley connecting these two streets!"
- During navigation tasks, referencing the map may reduce difficulty by 1.
- You can point to locations during narration to ground the story geographically.

Use the map actively and often. It draws players into the space, makes the city feel real, and rewards curiosity.

= GM Principles <principles>

These are not rules — they are the spirit behind the rules. Keep them close to your heart as you play.

+ *Say yes or roll dice.* If a player proposes something reasonable, either let it happen or make it a task. Never say "no" when you could say "yes, but roll for it."
+ *Difficulty reflects the world, not the character.* A locked door is equally difficult for everyone. The character's _skills_ are what make the difference.
+ *Let players narrate.* Their creativity enriches the game in ways you cannot predict. Give them space.
+ *Misinformation is a gift.* When memory fails and lies emerge, drama follows naturally. Lean into it.
+ *Time is a resource.* Ties and retries cost time — make time matter in the fiction. Someone is always approaching, something is always changing.
+ *The map is alive.* Use the Zweidler Plan actively. Point to it, ask "where exactly are you going?", let players discover routes.
+ *Immersion above all.* Every rule serves one purpose: helping everyone at the table _be_ in Bamberg, 1620. If a rule gets in the way of that, the rule bends.

= Quick Reference <reference>

#table(
  columns: (1fr, 2fr),
  [*Mechanic*], [*Summary*],
  [Task], [1d6 + skill dice; any die ≥ difficulty = success],
  [All 6s], [Spectacular success — extra good outcome],
  [All 1s], [Catastrophic failure — something goes badly wrong],
  [Duel], [Both sides roll; more successes wins the round],
  [Tie], [Neither gains ground; time passes; continue or yield],
  [Memory fail], [GM rolls secretly: 1–2 nothing, 3–4 misinformation, 5–6 truth],
  [Group task], [Combine all participants' dice into one pool],
  [Help die = 2], [Remove that die — it contributed nothing],
  [Help die = 1], [Entire task fails automatically],
  [Inspiration], [+1d6 once, then consumed; keep die separate],
  [Practice], [+1 from next day after first success],
  [Tool], [+1 (or more for exceptional quality)],
  [Motivation], [+1 with deep backstory justification],
  [Combat defeat], [Out of action for the encounter (no hit points)],
  [Boss stages], [Important enemies have 2–3 stages before true defeat],
)
