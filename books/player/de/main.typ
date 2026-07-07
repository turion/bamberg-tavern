#import "../../common/template.typ": *

#show: bamberg-book.with(
  title: "Bamberg Tavern",
  subtitle: "Spielerhandbuch",
  lang: "de",
)

= Willkommen in Bamberg

Willkommen bei _Bamberg Tavern_ — einem Tischrollenspiel, das euch in die lebendige, atmende Stadt Bamberg des frühen 17. Jahrhunderts versetzt. Ihr werdet durch Gartenbeete wandern, die nach Süßholz und Rosmarin duften, auf belebten Märkten feilschen, in schattige Brauereien spähen und Geheimnisse in engen Gassen flüstern — alles unter dem wachsenden Schatten der Hexenverfolgung.

Dies ist ein erzählerisches Spiel. Euer Charakter kann _alles_ versuchen, was eine reale Person im Bamberg der 1620er Jahre tun könnte. Es gibt keine starren Charakterklassen, keine vorgegebenen Fähigkeitslisten, keine Regeln die sagen „dein Charakter darf das nicht." Wenn ihr es euch vorstellen könnt, könnt ihr es versuchen. Die Geschichte die ihr gemeinsam erzählt — die Ängste, die Triumphe, die Momente unerwarteter Schönheit — ist das was zählt.

_Wir wollen Menschen ermöglichen, in das historische Bamberg einzutauchen._

Das ist das Herz dieses Spiels. Taucht ein. _Seid_ euer Charakter. Die Regeln sind leicht und schnell, damit sie der Geschichte nie im Weg stehen.

Dieses Handbuch enthält alles, was ihr zum Spielen braucht. Der Spielleiter (SL) hat ein ausführlicheres Buch mit zusätzlichen Regelungen; vertraut seinem Urteil während des Spiels.

#figure(
  image("../../common/zweidler-plan.jpg", width: 90%),
  caption: [Der Zweidler-Plan von Bamberg (1602) — eure Karte der Stadt. Quelle: Wikimedia Commons, Public Domain.],
)

= Die Grundlagen

== Der Würfel

Alle Würfe in diesem Spiel verwenden normale sechsseitige Würfel (*W6*). Ihr braucht nie einen anderen Würfeltyp. Einfach, vertraut, befriedigend zu würfeln.

== Aufgaben

Wenn euer Charakter etwas versucht, bei dem Misserfolg interessant und Erfolg unsicher ist, verlangt der SL einen *Aufgabenwurf*. Wenn das was ihr tun wollt trivial einfach ist, sagt der SL einfach ja. Wenn es klar unmöglich ist, sagt er es euch — und ihr könnt versuchen, die Umstände zu ändern.

#rule-box[
  *Kernmechanik:* Würfelt euren Würfelpool. Wenn *mindestens ein Würfel* eine Zahl gleich oder größer der *Schwierigkeit* zeigt, habt ihr Erfolg. Dann beschreibt _ihr_, wie es passiert.
]

#example(title: "Eine Aufgabe im Spiel")[
  #gm[Die Klostermauer erhebt sich vor dir — alter Stein, rutschig vom Moos nach dem Regen letzte Nacht. Friedrich, willst du klettern?]

  #player("Friedrich")[Ja! Ich suche nach Griffen zwischen den Steinen.]

  #gm[Sie ist rutschig und hoch. Schwierigkeit *4*. Du hast keinen Kletterhintergrund — nur deinen Basis-1W6. Würfle!]

  #player("Friedrich")[Eine 2. Das ist unter 4...]

  #gm[Misserfolg. Friedrich — wie geht es schief?]

  #player("Friedrich")[Ich komme zur Hälfte hoch, meine Finger finden einen Riss im Mörtel — aber mein Stiefel rutscht auf dem nassen Moos ab und ich gleite zurück, die Handflächen am rauen Stein aufgeschürft. Ich lande auf dem Hintern, mehr der Stolz als der Körper verletzt.]

  #gm[Perfekt. Die Mauer steht unerobert... vorerst.]
]

== Schwierigkeit

Der SL legt die Schwierigkeit jeder Aufgabe auf einer Skala von 2 bis 6 fest:

#table(
  columns: (auto, 1fr, 1fr),
  [*Schwierigkeit*], [*Beschreibung*], [*Beispiel*],
  [2], [Leicht], [Einen flachen Bach überqueren],
  [3], [Mittel], [Fußspuren in weichem Boden verfolgen],
  [4], [Anspruchsvoll], [Ein gutes Schloss knacken],
  [5], [Sehr schwer], [Gestohlenes Brot beim Fliehen über Dächer balancieren],
  [6], [Außergewöhnlich — braucht Glück], [Ein geworfenes Messer in der Luft fangen],
)

Die Schwierigkeit hängt von der *Situation* ab, nicht von den Fähigkeiten eures Charakters. Eine rutschige Wand ist Schwierigkeit 5, egal wer sie erklimmt. Eure Fähigkeiten geben euch mehr Würfel, um diese Zahl zu schlagen.

== Fähigkeiten

Fähigkeiten erhöhen euren Würfelpool über den Basis-1W6 hinaus. Jede anwendbare Fähigkeit gibt *+1W6*. Mehrere Fähigkeiten können und sollen sich stapeln — je mehr Vorbereitung und Hintergrund ihr in eine Aufgabe bringt, desto besser eure Chancen.

#rule-box[
  *Fähigkeiten kommen von:*
  + *Hintergrund:* Etwas in der Geschichte eures Charakters begründet Kompetenz.
  + *Hilfsmittel:* Ein relevanter Gegenstand in eurem Besitz.
  + *Übung:* Eine ähnliche Aufgabe zuvor geschafft zu haben.
  + *Rollenspiel:* Besonders überzeugende oder kreative Darstellung im Charakter.
  + *Motivation:* Tiefe persönliche Beweggründe, erklärt aus der Hintergrundgeschichte.
  + *Verwandter Hintergrund:* Eine zuvor etablierte Fähigkeit, die plausibel übertragbar ist.
]

=== Hintergrund

Wenn ihr eine Fähigkeit aus eurem Hintergrund beansprucht, erklärt *warum* euer Charakter darin gut wäre. Es muss nicht aufwendig sein — ein Satz genügt. „Ich bin auf einem Bauernhof aufgewachsen" oder „Ich war Lehrling eines Apothekers" oder „Ich fliehe seit meinem zwölften Lebensjahr vor dem Gesetz."

#example(title: "Einen Hintergrund beanspruchen")[
  #player("Anna")[Ich folge den Fußspuren. Ich bin auf einem Bauernhof aufgewachsen und habe jeden Morgen Tierspuren im Matsch beobachtet — ich weiß wie verschiedene Abdrücke aussehen.]

  #gm[Das ergibt absolut Sinn. Du bekommst +1W6 von deinem Bauerntum-Hintergrund. Schreib „Bauerntum — Spurenlesen" auf dein Charakterblatt.]
]

Einmal verwendet und akzeptiert, *schreibt ihr es auf euer Charakterblatt*. Ab dann ist es etabliert — ihr könnt es in ähnlichen Situationen wieder verwenden, ohne es jedes Mal neu begründen zu müssen.

=== Hilfsmittel

Ein relevanter Gegenstand gibt +1W6. Außergewöhnlich gute Gegenstände können nach Ermessen des SL +2 oder mehr geben.

#example(title: "Ein Hilfsmittel einsetzen")[
  #player("Friedrich")[Ich hole die Dietriche raus, die ich letzte Woche dem Dieb abgenommen habe. Die sollten helfen!]

  #gm[Absolut — Dietriche geben dir +1W6 beim Schlossknacken.]
]

=== Übung

Wenn ihr eine ähnliche Aufgabe zuvor *erfolgreich* bewältigt habt, bekommt ihr ab dem *nächsten Tag* +1W6 durch Übung. Die Fähigkeit braucht Zeit sich zu setzen — ihr könnt Übung nicht sofort beanspruchen, aber morgen gehört sie euch. Weitere Boni sammeln sich bei 10 Erfolgen, 100 Erfolgen usw. an.

#example(title: "Übung im Einsatz")[
  #gm[Anna, du hast gestern erfolgreich Spuren verfolgt. Heute verfolgst du erneut — du bekommst +1 durch Übung. Das Muskelgedächtnis greift.]
]

=== Rollenspiel

Bei sozialen Aufgaben — Überzeugung, Darbietung, Verhandlung — kann besonders überzeugender Dialog oder kreatives Vorgehen im Charakter +1W6 einbringen. Wenn ihr eine leidenschaftliche Rede _als euer Charakter_ haltet, kann der SL das belohnen.

=== Motivation

Wenn euer Charakter einen tiefen persönlichen Grund hat zu bestehen, und ihr es überzeugend aus seiner Hintergrundgeschichte erklären könnt, kann der SL +1W6 gewähren.

#example(title: "Motivation treibt den Wurf")[
  #player("Margarethe")[Meine Mutter wurde der Hexerei beschuldigt als ich zehn war. Sie floh in der Nacht — ich habe sie nie wiedergesehen. Ich werde _nicht_ zulassen, dass einer anderen Frau das passiert. Deshalb tue ich das — es ist persönlich.]

  #gm[Das ist kraftvoll. Motivation gibt +1W6.]
]

== SL-Entscheidungen vor dem Wurf

Bevor ihr würfelt, sagt euch der SL eines von:

- *„Es gelingt automatisch."* — Kein Wurf nötig; beschreibt, wie ihr es macht.
- *„Würfelt!"* — Der Standardfall. Der SL nennt die Schwierigkeit.
- *„Es ist möglich, aber..."* — Ihr _könnt_ es versuchen, aber ihr braucht etwas Bestimmtes (ein Werkzeug, Wissen, Beweis), um mindestens einen Fähigkeitswürfel zu haben.
- *„Es ist unmöglich."* — Ihr könnt es gar nicht versuchen, ohne die Situation grundlegend zu ändern.

== Ergebnisse lesen

- *Erfolg (irgendein Würfel ≥ Schwierigkeit):* Geschafft! Beschreibt wie.
- *Misserfolg (alle Würfel unter Schwierigkeit):* Es klappt nicht. Beschreibt wie es schiefgeht.
- *Alle Würfel zeigen 6:* Spektakulärer Erfolg! Etwas extra Wunderbares passiert.
- *Alle Würfel zeigen 1:* Katastrophaler Misserfolg! Etwas geht schlimm, denkwürdig schief — ein Werkzeug bricht, ihr verletzt euch, die Situation verschlechtert sich.
- *Mehrere Erfolge:* Ein saubereres, beeindruckenderes Ergebnis — Bonusinformation, zusätzlicher Vorteil, ein beeindruckter Zuschauer.

== Erzählung

Nach einem Wurf beschreibt *ihr*, wie euer Charakter Erfolg hat oder scheitert. Der SL bestimmt das mechanische Ergebnis, aber die Fiktion — das _Wie_ — gehört euch. Das ist eure Geschichte.

#example(title: "Auf eure Art erzählen")[
  #gm[Du hast eine 5 gegen Schwierigkeit 4 gewürfelt — Erfolg! Du knackst das Schloss. Wie machst du es?]

  #player("Friedrich")[Ich schließe die Augen und erinnere mich an den alten Meister Wendel, wie er mir den Trick zeigte — ‚Fühle die Stifte, nicht die Federn.' Ich atme langsam aus und... _klick_. Der letzte Stift fällt an seinen Platz.]
]

= Duelle

Wenn zwei Charaktere *entgegengesetzte* Handlungen versuchen — eine Verfolgung, ein Kampf, Armdrücken, Verstecken & Suchen, eine hitzige Debatte — liefern sie sich ein *Duell*.

#rule-box[
  *Duell:* Beide Seiten würfeln ihre Würfelpools gegen ihre jeweilige Schwierigkeit. Wer *mehr Erfolge* erzielt, gewinnt die Runde.
]

== Ablauf eines Duells

+ Der SL legt die Schwierigkeit für jede Seite fest (kann situationsbedingt unterschiedlich sein).
+ Beide Seiten zählen ihre anwendbaren Fähigkeiten und würfeln gleichzeitig.
+ Vergleicht die Anzahl der Erfolge (Würfel ≥ Schwierigkeit).
+ Die höhere Anzahl gewinnt die Runde.

== Gleichstand

Bei Gleichstand gewinnt keine Seite an Boden. Die Zeit vergeht in der Fiktion — Wachen nähern sich, Regen fällt, ein Zeuge erscheint. Jede Seite kann:
- *Weitermachen:* Erneut würfeln.
- *Aufgeben:* Das Duell zu eigenen Bedingungen zugestehen.

#example(title: "Verfolgungsjagd durch den Markt")[
  #player("Margarethe")[Ich schlüpfe zwischen den Fischständen durch!]

  #gm[Margarethe und Lorenz erzielen je 1 Erfolg. Gleichstand! Ihr lauft Kopf an Kopf durch die Menge, keiner gewinnt Boden. Zuschauer drücken sich an die Wände. Ein Kohlkarren schwankt gefährlich. Lauft ihr weiter?]

  #player("Margarethe")[Ja! Ich lasse mich nicht fangen!]
]

== Mehrrundige Duelle

Duelle können über mehrere Runden gehen. Zwischen den Runden können sich Umstände ändern — ihr könntet ein Werkzeug greifen, das Gelände könnte sich verschieben, oder der SL bietet euch eine schwierige Wahl.

#example(title: "Steigende Einsätze")[
  #gm[Kaspar greift nach einer Mistgabel von der Wand — das ist +1 Werkzeug für ihn nächste Runde. Anna, willst du auch etwas greifen?]

  #player("Anna")[Den Rechen! Ich werde seine Gabel damit einhaken!]
]

= Erinnerung & Wissen

Wenn ihr versucht euch an etwas zu *erinnern*, ein Dokument zu *erforschen*, ein Rätsel zu *lösen* oder in einem Gespräch eine Information *herauszukitzeln*:

#rule-box[
  Würfelt wie bei einer normalen Aufgabe. Bei *Misserfolg* würfelt der SL verdeckt 1W6:
  - *1–2:* Ihr erfahrt nichts.
  - *3–4:* Ihr erhaltet eine *falsche* Information und haltet sie für wahr.
  - *5–6:* Ihr erhaltet die *Wahrheit* trotz des Misserfolgs.
  Ihr wisst nicht, welches Ergebnis eingetreten ist.
]

Bei Erfolg erfahrt ihr die Information. Bei *mehreren* Erfolgen erfahrt ihr möglicherweise zusätzliche Details.

Das bedeutet: Ihr könnt nie ganz sicher sein, ob das Wissen eures Charakters korrekt ist — und das ist Teil des Spaßes. Handelt nach dem was euer Charakter glaubt, auch wenn _ihr_ als Spieler vermutet, es könnte falsch sein.

#example(title: "Die mysteriösen Kräuter")[
  #gm[Auf dem Tisch findet ihr ein kleines Bündel mysteriöser getrockneter Kräuter, mit grobem Bindfaden zusammengebunden.]

  #player("Friedrich")[Ich will herausfinden was das für Kräuter sind.]

  #gm[Hast du einen Hintergrund oder Werkzeuge die helfen würden?]

  #player("Friedrich")[Hmm, eigentlich nicht — ich habe nie speziell mit Pflanzen gearbeitet.]

  #gm[Gut, dann nur dein Basiswürfel. Würfle!]

  #player("Friedrich")[Eine 4.]

  #gm[_(Würfelt verdeckt eine 3)_ Friedrich, du drehst das Bündel in den Händen, reibst ein Blatt zwischen den Fingern. Ja — du bist dir sicher. Das ist getrockneter Lavendel, die Sorte für beruhigende Tinkturen. Vollkommen harmlos.]

  _Angewandte Regeln: Friedrich scheiterte an einer Erinnerungsaufgabe mit verborgener Schwierigkeit (5). Der SL würfelte verdeckt eine 3, was bedeutet, Friedrich erhält Falschinformation und glaubt sie vollständig. Er wird der Gruppe zuversichtlich sagen, das sei Lavendel — aber es könnte etwas ganz anderes sein._
]

= Gruppenaufgaben & Hilfe

== Gruppenaufgaben

Wenn Charaktere *gemeinsam* auf ein einziges Ziel hinarbeiten, werden alle Fähigkeiten in einem Pool zusammengefasst.

#rule-box[
  *Gruppenaufgabe:* Alle Fähigkeitswürfel der Teilnehmer werden zu einem einzigen Würfelpool addiert. Die Gruppe hat gemeinsam Erfolg oder Misserfolg.
]

Jeder der mitmacht, trägt mindestens seinen Basis-1W6 bei, auch ohne relevante Fähigkeiten. Aber die Teilnahme ist eine Wahl — ihr könnt entscheiden, dass euer Charakter zurückbleibt oder etwas anderes tut.

#example(title: "Den Steinblock anheben")[
  #gm[Wer hilft den Steinblock beiseitezuschieben?]

  #player("Anna")[Ich bin dabei. Kraft von der Feldarbeit — +1.]

  #player("Friedrich")[Ich klemme einen Ast darunter als Hebel — das ist ein Werkzeug, +1.]

  #player("Margarethe")[Ich schiebe auch mit, auch wenn ich keine passende Fähigkeit habe.]

  #gm[Drei Basiswürfel plus zwei Fähigkeiten = insgesamt 5W6 gegen Schwierigkeit 5. Würfelt!]
]

== Hilfe

Wenn nur ein Charakter die Handlung ausführt, andere aber *unterstützen*:

#rule-box[
  Jeder Helfer fügt *1 Würfel* zum Pool des Hauptcharakters hinzu. Aber:
  - Zeigt ein Hilfewürfel *2*: Die Hilfe misslingt — dieser Würfel wird entfernt.
  - Zeigt ein Hilfewürfel *1*: Die *gesamte Aufgabe misslingt* automatisch, ungeachtet anderer Würfel.
]

Der helfende Spieler beschreibt, wie seine Unterstützung schief geht. Verwendet verschiedenfarbige Würfel oder würfelt separat, damit alle sehen können welcher Würfel wem gehört — der SL wird euch vor dem Würfeln anweisen.

#example(title: "Wenn Hilfe schiefgeht")[
  #gm[Friedrich überredet den Wächter. Anna und Margarethe, ihr helft — nehmt die blauen und roten Würfel. Friedrich würfelt weiß.]

  #player("Anna")[Blauer Würfel: 3. Alles gut!]

  #player("Margarethe")[Roter Würfel: ...1.]

  #gm[Margarethes Hilfewürfel ist 1 — die gesamte Aufgabe scheitert! Margarethe, wie geht deine Hilfe spektakulär schief?]

  #player("Margarethe")[Ich... ich versuche mitfühlend auszusehen aber platze versehentlich mit Friedrichs echtem Namen heraus statt dem falschen. Die Augen des Wächters verengen sich: „Ihr _lügt_."]
]

= Inspiration

Der SL kann einen *Inspirationswürfel* vergeben für:
- Herausragendes Rollenspiel, das euren Charakter zum Leben erweckt
- Clevere Problemlösung, die den Tisch überrascht
- Denkwürdige Momente, die alle zum Lachen, Staunen oder Verstummen bringen

#rule-box[
  Ein Inspirationswürfel kann *einmal* bei jedem zukünftigen Wurf als zusätzlicher +1W6 eingesetzt werden. Einmal benutzt, ist er verbraucht. Bewahrt ihn sichtbar auf — vielleicht einen andersfarbigen Würfel neben eurem Charakterblatt — damit alle wissen, wer einen hält.
]

= Kampf & Niederlage

Anders als in vielen anderen Pen-and-Paper-Spielen gibt es in Bamberg Tavern keine Trefferpunkte.

#rule-box[
  - Kämpfe werden als Reihe von *Duellen* ausgetragen.
  - Verliert ein Charakter ein Duell im Kampf, ist er für den Rest der Auseinandersetzung *außer Gefecht*.
  - Einige wichtige Charaktere haben 2–3 „Stufen" — sie verlieren mehrere Duelle bevor sie wirklich besiegt sind. Jede Stufe repräsentiert einen dramatischen Wandel: Rüstung splittert, der Feind taumelt, ein verzweifeltes letztes Aufbäumen.
]

= Charaktererstellung

Es gibt keine festen Werte, keine vorgegebenen Listen, keine Klassen. Euer Charakter wird definiert durch das was er _ist_, nicht durch Zahlen auf einem Blatt. Um einen Charakter zu erstellen:

+ *Wählt ein Konzept:* Ein Gärtner, ein Brauerlehrling, ein fahrender Händler, ein Gelehrter, ein Ausreißer, eine Hebamme, die Tochter eines Nachtwächters...
+ *Definiert Hintergründe:* Schlagt Fähigkeiten vor, die euer Charakter aus seinem Leben haben würde. Der SL bestätigt. Schreibt sie auf.
+ *Spielt und entdeckt:* Neue Hintergründe können im Spiel entstehen, wann immer ihr sie aus der Geschichte eures Charakters begründet.

Euer Charakterblatt wächst organisch, während ihr durch das Spiel neue Fähigkeiten und Hintergründe etabliert. Ihr entscheidet, wie detailliert euer Charakter ist — manche Spieler bevorzugen eine kurze Skizze, andere eine reiche Biographie. Beides ist willkommen.

#example(title: "Ein knapper Charakter")[
  *Anna* — Bauerntochter aus der Umgebung Bambergs. Stark, praktisch, scharfe Augen.

  _Hintergründe:_ Kraft von der Feldarbeit. Tierspuren lesen. Sture Entschlossenheit.
]

#example(title: "Ein ausführlicher Charakter")[
  *Friedrich Holzmann* — Ehemaliger Apothekerlehrling, nun umherziehend nach dem Tod seines Meisters. Dünn, nervöse Hände, riecht immer leicht nach Kräutern. Trägt einen Lederbeutel mit Tinkturen und ein abgegriffenes Tagebuch.

  _Hintergründe:_ Kräuterkenntnis (Lehre, 3 Jahre). Gebildete Sprache (lese- und schreibkundig, in lateinischer Korrespondenz geschult). Ruhige Hände (Jahre des genauen Dosierens). Neugier (gerät in Schwierigkeiten weil er Dinge _wissen_ muss).

  _Hilfsmittel:_ Apothekerbeutel. Dietriche (in Szene 3 erworben). Eisennagel (aus dem Stall).

  _Übung:_ Spurenlesen (+1, gestern gelungen). Schlossknacken (+1, letzte Woche gelungen).

  _Notizen:_ Angst vor Feuer seit der Kindheit. Schuldet dem Brauer Albrecht einen Gefallen. Vermutet heimlich, dass die Kräuter in der Brauerei nicht das sind was sie scheinen.
]

= Die Stadt Bamberg

Eure Abenteuer finden in und um Bamberg statt, ca. 1620. Der Zweidler-Plan (am Anfang gezeigt) dient als eure Karte — nicht nur als Dekoration, sondern als Werkzeug das ihr am Tisch benutzen könnt. Wichtige Orte:

- *Grüner Markt:* Der grüne Markt — Zentrum des täglichen Lebens, Klatsch und Handels.
- *Gärtnerstadt:* Das Gärtnerviertel, voller Beete mit Süßholz, Gemüse und Kräutern.
- *Der Dom:* Sitz der Macht des Fürstbischofs.
- *Der Kranen:* Flusshafen und Krananlage.
- *Malefizhaus:* Das Hexengefängnis — ein Ort des Schreckens.

Die Karte gehört euch zum Erkunden. Untersucht sie um Routen zu planen, Abkürzungen zu entdecken, argumentiert dass eine Gasse zwei Straßen verbinden muss — wenn ihr es auf der Karte sehen könnt, weiß euer Charakter vielleicht davon.
