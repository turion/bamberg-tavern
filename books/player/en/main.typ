#import "../../common/template.typ": *

#show: bamberg-book.with(
  title: "Bamberg Tavern",
  subtitle: "Player's Guide",
  lang: "en",
)

= Welcome to Bamberg

Welcome to _Bamberg Tavern_ — a tabletop role-playing game that transports you to the living, breathing city of Bamberg in the early 17th century. You will wander through garden plots fragrant with liquorice and rosemary, haggle in bustling markets, peer into shadowy breweries, and whisper secrets in narrow alleys — all under the growing shadow of the witch trials.

This is a narrative-driven game. Your character can attempt _anything_ that a real person in 1620s Bamberg might try. There are no rigid character classes, no predetermined skill lists, no rules that say "your character isn't allowed to do that." If you can imagine it, you can try it. The story you tell together — the fears, the triumphs, the moments of unexpected beauty — is what matters most.

_We want to enable people to immerse themselves in historical Bamberg._

That is the heart of this game. Immerse yourself. _Be_ your character. The rules are light and fast so they never get in the way of the story.

This guide contains everything you need to play. The Game Master (GM) has a more detailed book with additional rulings; trust their judgment during play.

#figure(
  image("../../common/zweidler-plan.jpg", width: 90%),
  caption: [The Zweidler Plan of Bamberg (1602) — your map of the city. Source: Wikimedia Commons, Public Domain.],
)

= The Basics

== The Die

All rolls in this game use standard six-sided dice (*d6*). You will never need any other type of die. Simple, familiar, satisfying to roll.

== Tasks

When your character attempts something where failure is interesting and success is uncertain, the GM calls for a *task roll*. If what you want to do is trivially easy, the GM simply says yes. If it's clearly impossible, they'll tell you — and you can try to change the circumstances.

#rule-box[
  *Core Mechanic:* Roll your dice pool. If *at least one die* shows a number equal to or greater than the *difficulty*, you succeed. Then _you_ describe how it happens.
]

#example(title: "A Task in Play")[
  #gm[The monastery wall rises before you — old stone, slick with moss after last night's rain. Friedrich, you want to climb it?]

  #player("Friedrich")[Yes! I look for handholds between the stones.]

  #gm[It's slippery and tall. Difficulty *4*. You have no climbing background — just your base 1d6. Roll!]

  #player("Friedrich")[A 2. That's below 4...]

  #gm[Failure. Friedrich — how does it go wrong?]

  #player("Friedrich")[I get halfway up, my fingers find a crack in the mortar — but my boot slips on the wet moss and I slide back down, scraping my palms on the rough stone. I land in a heap, pride bruised more than anything.]

  #gm[Perfect. The wall stands unconquered... for now.]
]

== Difficulty

The GM sets the difficulty for each task on a scale of 2 to 6:

#table(
  columns: (auto, 1fr, 1fr),
  [*Difficulty*], [*Description*], [*Example*],
  [2], [Easy], [Crossing a shallow stream],
  [3], [Moderate], [Tracking footprints in soft earth],
  [4], [Challenging], [Picking a good lock],
  [5], [Very hard], [Balancing stolen bread while fleeing over rooftops],
  [6], [Extraordinary — needs luck], [Catching a thrown knife mid-air],
)

The difficulty depends on the *situation*, not on your character's abilities. A slippery wall is difficulty 5 regardless of who climbs it. Your skills are what give you more dice to beat that number.

== Skills

Skills increase your dice pool beyond the base 1d6. Each applicable skill grants *+1d6*. Multiple skills can and should stack — the more preparation and background you bring to a task, the better your chances.

#rule-box[
  *Skills come from:*
  + *Background:* Something in your character's history justifies competence.
  + *Tools:* A relevant item you possess.
  + *Practice:* Having succeeded at a similar task before.
  + *Roleplaying:* Particularly persuasive or creative in-character performance.
  + *Motivation:* Deep personal stakes, explained from your character's backstory.
  + *Related background:* A previously established skill that plausibly transfers.
]

=== Background

When you claim a skill from your background, explain *why* your character would be good at this. It doesn't need to be elaborate — a sentence is enough. "I grew up on a farm" or "I apprenticed with an apothecary" or "I've been running from the law since I was twelve."

#example(title: "Claiming a Background")[
  #player("Anna")[I follow the footprints. I grew up on a farm watching animal tracks in the mud every morning — I know what different prints look like.]

  #gm[That makes perfect sense. You get +1d6 from your farming background. Write "Farm upbringing — tracking" on your character sheet.]
]

Once a background is used and accepted, you *write it down on your character sheet*. From then on, it's established — you can use it again in similar situations without needing to re-justify it every time.

=== Tools

A relevant item grants +1d6. Exceptionally fine items may grant +2 or more at the GM's discretion.

#example(title: "Using a Tool")[
  #player("Friedrich")[I pull out the lockpicks I took from the thief last week. Those should help!]

  #gm[Absolutely — lockpicks give you +1d6 for picking locks.]
]

=== Practice

If you have *successfully* completed a similar task before, you gain +1d6 from the *next day* onward. The skill needs time to settle — you can't claim practice immediately, but tomorrow it's yours. Further bonuses accumulate at 10 successes, 100 successes, and so on.

#example(title: "Practice at Work")[
  #gm[Anna, you tracked footprints successfully yesterday. Today you're tracking again — you gain +1 from practice. That muscle memory is kicking in.]
]

=== Roleplaying

For social tasks — persuasion, performance, negotiation — particularly convincing in-character dialogue or creative approaches may earn +1d6. If you deliver a passionate speech _as your character_, the GM may reward that.

=== Motivation

If your character has a deep personal reason to succeed and you can explain it compellingly from their backstory, the GM may grant +1d6.

#example(title: "Motivation Fuels the Roll")[
  #player("Margarethe")[My mother was accused of witchcraft when I was ten. She barely escaped. I will _not_ let this happen to another woman. That's why I'm doing this — it's personal.]

  #gm[That's powerful. Motivation grants +1d6.]
]

== GM Rulings Before You Roll

Before you roll, the GM will tell you one of:

- *"It succeeds automatically."* — No roll needed; describe how you do it.
- *"Roll!"* — The standard case. The GM announces the difficulty.
- *"It's possible, but..."* — You _can_ try, but you need something specific (a tool, knowledge, evidence) to have at least one skill die.
- *"It's impossible."* — You cannot attempt this at all without fundamentally changing the situation.

== Reading Your Results

- *Success (any die ≥ difficulty):* You did it! Describe how.
- *Failure (all dice below difficulty):* It doesn't work. Describe how it goes wrong.
- *All dice show 6:* Spectacular success! Something extra-wonderful happens.
- *All dice show 1:* Catastrophic failure! Something goes badly, memorably wrong — a tool breaks, you hurt yourself, the situation worsens.
- *Multiple successes:* A cleaner, more impressive result — bonus information, extra benefit, or an impressed onlooker.

== Narration

After a roll, *you* describe how your character succeeds or fails. The GM determines the mechanical outcome, but the fiction — the _how_ — belongs to you. This is your story.

#example(title: "Narrating Your Way")[
  #gm[You rolled a 5 against difficulty 4 — success! You pick the lock. How do you do it?]

  #player("Friedrich")[I close my eyes and remember old Meister Wendel showing me the trick — 'feel for the pins, not the springs.' I breathe out slowly and... _click_. The last tumbler falls into place.]
]

= Duels

When two characters attempt *opposing* actions — a chase, a fight, arm-wrestling, hide-and-seek, a heated debate — they engage in a *duel*.

#rule-box[
  *Duel:* Both sides roll their dice pools against their respective difficulties. Whoever achieves *more successes* wins the round.
]

== Running a Duel

+ The GM sets difficulty for each side (which may differ based on circumstances).
+ Both sides count their applicable skills and roll simultaneously.
+ Compare number of successes (dice ≥ difficulty).
+ Higher count wins the round.

== Ties

On a tie, neither side gains ground. Time passes in the fiction — guards approach, rain falls, a witness appears. Each side may:
- *Continue:* Roll again.
- *Yield:* Concede the duel on your own terms.

#example(title: "A Chase Through the Market")[
  #player("Margarethe")[I dart between the fish-stalls!]

  #gm[Margarethe and Lorenz each get 1 success. A tie! You're running neck and neck through the crowd, neither gaining ground. Onlookers press against the walls. A cart of cabbages wobbles dangerously. Do you keep running?]

  #player("Margarethe")[Yes! I won't let him catch me!]
]

== Multi-Round Duels

Duels can span several rounds. Between rounds, circumstances may change — you might grab a tool, the terrain might shift, or the GM might offer you a difficult choice.

#example(title: "Escalating Stakes")[
  #gm[Kaspar grabs a gardening fork from the wall — that's +1 tool for him next round. Anna, do you want to grab something too?]

  #player("Anna")[The rake! I'll hook his fork with it!]
]

= Memory & Knowledge

When you try to *recall* something, *research* a document, *solve* a puzzle, or *extract* information from a conversation:

#rule-box[
  Roll as a normal task. On *failure*, the GM rolls 1d6 secretly:
  - *1–2:* You learn nothing.
  - *3–4:* You receive *false* information and believe it to be true.
  - *5–6:* You receive the *truth* despite failing.
  You do not know which outcome occurred.
]

On success, you learn the information. With *multiple* successes, you may learn additional details.

This means you can never be entirely certain your character's knowledge is correct — and that's part of the fun. Act on what your character believes, even when _you_ as a player suspect it might be wrong.

#example(title: "The Mysterious Herbs")[
  #gm[On the table you find a small bundle of mysterious dried herbs, tied with rough twine.]

  #player("Friedrich")[I want to find out what herbs these are.]

  #gm[Do you have any background or tools that would help?]

  #player("Friedrich")[Hmm, actually not — I never trained with plants specifically.]

  #gm[Alright, just your base die then. Roll!]

  #player("Friedrich")[A 4.]

  #gm[_(Secretly rolls a 3)_ Friedrich, you turn the bundle over in your hands, rub a leaf between your fingers. Yes — you're certain. This is dried lavender, the kind used in calming tinctures. Perfectly harmless.]

  _Rules applied: Friedrich failed a memory task with hidden difficulty (5). The GM secretly rolled a 3, meaning Friedrich receives misinformation and believes it completely. He will confidently tell the group this is lavender — but it may be something else entirely._
]

= Group Tasks & Helping

== Group Tasks

When characters work *together* toward a single goal, combine all their skills into one pool.

#rule-box[
  *Group task:* All participants' skill dice are added together into a single dice pool. The group succeeds or fails as one.
]

Everyone who participates contributes at least their base 1d6, even without relevant skills. But participation is a choice — you can decide your character stands back or does something else instead.

#example(title: "Lifting the Flagstone")[
  #gm[Who's helping push the flagstone aside?]

  #player("Anna")[I'm in. Farm strength — +1.]

  #player("Friedrich")[I'll wedge a branch underneath for leverage — that's a tool, +1.]

  #player("Margarethe")[I'll push too, even though I don't have a relevant skill.]

  #gm[Three base dice plus two skills = 5d6 total against difficulty 5. Roll!]
]

== Helping

When only one character performs the action but others *assist*:

#rule-box[
  Each helper adds *1 die* to the main character's pool. However:
  - If a help die shows *2*: That helper's contribution fails — remove their die.
  - If a help die shows *1*: The *entire task fails* automatically, regardless of other dice.
]

The helping player describes how their assistance goes wrong. Use different-coloured dice or roll separately so everyone can see which die belongs to whom — the GM will instruct you before rolling.

#example(title: "When Help Goes Wrong")[
  #gm[Friedrich's persuading the guard. Anna and Margarethe, you're helping — use the blue and red dice. Friedrich rolls white.]

  #player("Anna")[Blue die: 3. I'm fine!]

  #player("Margarethe")[Red die: ...1.]

  #gm[Margarethe's help die is 1 — the entire task fails! Margarethe, how does your help go spectacularly wrong?]

  #player("Margarethe")[I... I try to look sympathetic but I accidentally blurt out Friedrich's real name instead of the fake one. The guard's eyes narrow: "You're _lying_."]
]

= Inspiration

The GM may award an *inspiration die* for:
- Excellent roleplaying that brings your character to life
- Clever problem-solving that surprises the table
- Memorable moments that make everyone laugh, gasp, or fall silent

#rule-box[
  An inspiration die can be spent *once* on any future roll as an additional +1d6. Once used, it is gone. Keep it somewhere visible — perhaps a different-coloured die set aside near your character sheet — so everyone knows you hold one.
]

= Combat & Defeat

Unlike in many other pen and paper games, there are no hit points in Bamberg Tavern.

#rule-box[
  - Combat is resolved as a series of *duels*.
  - If a character loses a duel in combat, they are *out of action* for the remainder of that encounter.
  - Some important characters may have 2–3 "stages" — losing multiple duels before being truly defeated. Each stage represents a dramatic shift: armour cracking, the enemy staggering, a desperate last stand.
]

= Character Creation

There are no fixed stats, no predetermined lists, no classes. Your character is defined by who they _are_, not by numbers on a page. To create a character:

+ *Choose a concept:* A gardener, a brewer's apprentice, a travelling merchant, a scholar, a runaway, a midwife, a night watchman's daughter...
+ *Define backgrounds:* Propose skills your character would have from their life. The GM approves. Write them down.
+ *Play to discover:* New backgrounds can emerge during play whenever you justify them from your character's story.

Your character sheet grows organically as you establish new skills and backgrounds through play. You decide how detailed your character is — some players prefer a brief sketch, others a rich biography. Both are welcome.

#example(title: "A Brief Character")[
  *Anna* — Farmer's daughter from outside Bamberg. Strong, practical, sharp eyes.

  _Backgrounds:_ Farm strength. Animal tracking. Stubborn determination.
]

#example(title: "A Detailed Character")[
  *Friedrich Holzmann* — Former apothecary's apprentice, now wandering after his master's death. Thin, nervous hands, always smells faintly of herbs. Carries a leather satchel of tinctures and a worn journal.

  _Backgrounds:_ Herb identification (apprenticeship, 3 years). Educated speech (literate, trained in Latin correspondence). Steady hands (years of measuring precise doses). Curiosity (gets into trouble because he must _know_ things).

  _Tools:_ Apothecary's satchel. Lockpicks (acquired in Scene 3). Iron nail (from the stable).

  _Practice:_ Tracking (+1, succeeded yesterday). Lock-picking (+1, succeeded last week).

  _Notes:_ Afraid of fire since childhood. Owes a debt to the brewer Albrecht. Secretly suspects the herbs at the brewery are not what they seem.
]

= The City of Bamberg

Your adventures take place in and around Bamberg, circa 1620. The Zweidler Plan (shown at the start) serves as your map — not merely a decoration, but a tool you can use at the table. Key locations include:

- *Grüner Markt:* The green market — centre of daily life, gossip, and trade.
- *Gärtnerstadt:* The gardeners' quarter, full of plots growing liquorice, vegetables, and herbs.
- *The Cathedral (Dom):* Seat of the Prince-Bishop's power.
- *The Kranen:* Riverside crane and port area.
- *Malefizhaus:* The witch prison — a place of dread.

The map is yours to explore. Examine it to plan routes, spot shortcuts, argue that an alley must connect two streets — if you can see it on the map, your character might know about it too.
