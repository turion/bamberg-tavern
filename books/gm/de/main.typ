#import "../../common/template.typ": *

#show: bamberg-book.with(
  title: "Bamberg Tavern",
  subtitle: "Spielleiterhandbuch",
  lang: "de",
)

= Willkommen, Spielleiter <intro>

Ihr haltet die vollständigen Regeln für _Bamberg Tavern_ in den Händen — ein Tischrollenspiel, das Spielende einlädt, sich in der lebendigen, atmenden Stadt Bamberg um 1620 zu verlieren. Jede kopfsteingepflasterte Gasse, jeder blubbernde Braukessel, jede geflüsterte Anklage liegt in euren Händen, zum Leben zu erwecken.

_Wir wollen Menschen ermöglichen, in das historische Bamberg einzutauchen._

Das ist das Herz von allem, was folgt. Die Regeln dienen der Immersion — sie sind schnell aufzulösen, leicht im Verwaltungsaufwand und so gestaltet, dass sie aus dem Weg bleiben, damit die Geschichte fließen kann. Es gibt keine ausufernden Werteblöcke zum Nachschlagen, keine komplexen Berechnungen, die einen spannenden Moment unterbrechen. Wenn ein Spieler möchte, dass sein Charakter etwas versucht — alles, was sich eine reale Person im Bamberg der 1620er Jahre vorstellen könnte — geben die Regeln euch einen schnellen, eleganten Weg herauszufinden, was geschieht, und dann tauchen alle wieder in die Fiktion ein.

Eure Rolle ist ein Geschenk und eine Freude: Ihr setzt die Bühne, ihr haucht den Bewohnern der Stadt Leben ein, ihr entscheidet was leicht und was gefährlich ist — und dann tretet ihr zurück und lasst euch von der Kreativität der Spielenden überraschen. Die Regeln sind eure Instrumente; spielt sie mit Flair.

#figure(
  image("../../common/zweidler-plan.jpg", width: 90%),
  caption: [Der Zweidler-Plan von Bamberg (1602) — die Stadt unter euren Fingerspitzen.],
)

== Warum diese Regeln? <design-philosophy>

Wir wollen, dass Spielende ihre Charaktere _sind_ — den Duft der Süßholzfelder riechen, die kalten Steine des Malefizhauses fühlen, leidenschaftlich vor dem Bischofsgericht argumentieren. Alles in diesem System ist auf dieses Ziel ausgerichtet:

- *Schnelligkeit:* Eine Aufgabe aufzulösen dauert Sekunden. Würfeln, mit einer Zahl vergleichen, erzählen. Niemand bricht die Immersion, um Tabellen durchzublättern oder Modifikatoren zu addieren.
- *Offenheit:* Es gibt keine starren Charakterklassen oder vorgegebene Fähigkeitslisten. Wenn sich ein Spieler vorstellen kann, dass sein Charakter etwas tut, und es in der Fiktion Sinn ergibt, kann er es versuchen. Die Regeln sagen nie „dein Charakterblatt erlaubt das nicht."
- *Narrative Kontrolle:* Spielende beschreiben ihre eigenen Erfolge und Misserfolge. Die Geschichte gehört allen am Tisch, nicht nur dem SL.
- *Leichtigkeit:* Die gesamte Kernmechanik passt auf eine einzige Seite. Man kann einem neuen Spieler alles in zwei Minuten erklären und sofort losspielen.

Das Ergebnis: Mehr Zeit im Bamberger Leben, weniger Zeit im Kampf mit Mechaniken.

= Kernmechaniken <core>

== Der Aufgabenwurf <task-roll>

Wenn ein Spielercharakter etwas versucht, bei dem sowohl Erfolg als auch Misserfolg interessant wären, verlangt ihr einen Aufgabenwurf.

#rule-box[
  + Bestimmt, ob die Aufgabe *möglich* ist — und welche Art von Entscheidung zutrifft.
  + Legt die *Schwierigkeit* fest (2–6).
  + Zählt die *Fähigkeiten* des Charakters (jede anwendbare Fähigkeit = +1W6).
  + Der Spieler würfelt seinen Würfelpool (1 Basiswürfel + Fähigkeitswürfel).
  + Wenn *mindestens ein Würfel ≥ Schwierigkeit*, *gelingt* die Aufgabe.
  + Der *Spieler erzählt* das Ergebnis.
]

=== Schritt 1: Ist es möglich? <rulings>

Bevor Würfel auf den Tisch fallen, trefft eine von vier Entscheidungen. Diese sind von leichtester bis schwierigster geordnet:

#table(
  columns: (auto, 1fr, 1fr),
  [*Entscheidung*], [*Bedeutung*], [*Beispiel*],
  [Automatischer Erfolg], [Gelingt ohne Wurf — das Ergebnis ist sicher], [Eine unverschlossene Tür öffnen; eine bekannte Straße entlanggehen],
  [Standardaufgabe], [Würfeln gegen angesagte Schwierigkeit], [Fußspuren in weichem Boden verfolgen; einen vorsichtigen Händler überzeugen],
  [Möglich, aber etwas fehlt], [Die Aufgabe _kann_ bewältigt werden, aber der Charakter braucht bestimmte Vorbereitung, Werkzeuge oder Wissen, um es überhaupt versuchen zu können], [Einen Stein bearbeiten: braucht einen Meißel oder Maurererfahrung. Einen seltenen Samen pflanzen: braucht Gartenwissen],
  [Unmöglich], [Kann nicht versucht werden — kein Wurf, keine Diskussion, bis sich die Umstände grundlegend ändern], [Ein Haus mit bloßen Händen anheben; ein Buch lesen, das nicht existiert],
)

Die Unterscheidung zwischen „möglich, aber etwas fehlt" und „unmöglich" ist entscheidend. „Möglich, aber etwas fehlt" bedeutet, die Aufgabe _könnte_ mit der richtigen Vorbereitung gelingen — der Spieler muss ein Werkzeug beschaffen, eine Fähigkeit erlernen oder die Situation ändern, bevor er würfeln kann. „Unmöglich" bedeutet, keine Vorbereitung innerhalb der aktuellen Fiktion würde helfen.

#example(title: "Entscheidung im Spiel: Die Steinmauer")[
  #gm[Du willst eine Inschrift in den Stein meißeln? Das ist eine Aufgabe, die entweder ein ordentliches Werkzeug erfordert — einen Meißel, ein scharfes Messer — oder Erfahrung in Steinarbeit. Ohne eines davon kann ich dich nicht würfeln lassen. Hast du so etwas?]

  #player("Friedrich")[Ich habe den Eisennagel, den ich vorhin aus der Stalltür gezogen habe!]

  #gm[Ein Nagel... grob, aber ich erlaube es als einfaches Werkzeug. Du kannst es versuchen — Schwierigkeit 4, denn Stein ist unnachgiebig. Würfle!]
]

=== Schritt 2: Schwierigkeit festlegen <difficulty>

Die Schwierigkeit spiegelt die *Situation und die Welt* wider, niemals den Charakter. Eine rutschige Mauer ist Schwierigkeit 5, egal ob ein flinker Dieb oder ein ungeschickter Gelehrter den Aufstieg versucht. Berücksichtigt:

- Wetter und Beleuchtung
- Zeitdruck
- Qualität von Werkzeugen oder Hindernissen
- Wie ungewöhnlich oder heikel die Aufgabe ist

Die Schwierigkeit hat _keinen_ automatischen Standardwert — ihr beurteilt jede Situation individuell danach, wie schwer sie für _jeden_ unter genau diesen Umständen wäre.

*Verborgene Schwierigkeit:* Bei Erinnerungs- und Wissensaufgaben könnt ihr die Schwierigkeit geheim halten. Der Spieler würfelt einfach, ohne die Zielzahl zu kennen. Das ist auch nützlich bei Wahrnehmungsaufgaben („Bemerke ich die Gestalt im Schatten?") oder Ermittlungsaufgaben, bei denen die Charaktere nicht wissen, wie schwer das Rätsel wirklich ist. Siehe @memory für vollständige Details.

*Unterschiedliche Schwierigkeiten im Duell:* Jede Seite eines Duells kann eine andere Schwierigkeit haben, basierend auf ihren individuellen Umständen. Siehe @duels.

=== Schritt 3: Fähigkeiten zählen <skills>

Fähigkeiten kommen vom Vorschlag des Spielers, bestätigt durch euer Urteil. Das ist der Motor des Spiels — der Ort, an dem Spielende kreativ mit der Geschichte ihrer Charaktere und der Fiktion umgehen. Ermutigt sie, quer zu denken und überraschende Verbindungen vorzuschlagen. Bei schüchternen, vergesslichen oder neuen Spielern dürft ihr sanft nachhelfen: „Denk dran, du hast diese Schaufel in der Tasche — würde die hier helfen?" oder „Ist dein Charakter nicht an einem Fluss aufgewachsen?"

Jede eigenständige, begründete Fähigkeit fügt *+1W6* zum Pool hinzu. Mehrere Quellen können und sollen sich stapeln — so werden Charaktere kompetent in dem, worin sie investiert haben. Ein Charakter mit relevantem Hintergrund, gutem Werkzeug und Übung von gestern könnte 4W6 würfeln. Das ist kein Grenzfall; das ist das System, wie es gedacht ist.

Quellen von Fähigkeiten:

+ *Hintergrund (etabliert):* Eine Fähigkeit, die der Spieler zuvor verwendet und auf sein Charakterblatt geschrieben hat. Sie gilt automatisch in ähnlichen Situationen — keine erneute Begründung nötig. Beispiel: „Ich bin auf einem Bauernhof aufgewachsen" gibt +1 für körperliche Arbeit, einmal etabliert.

+ *Hintergrund (neu):* Der Spieler schlägt etwas Neues aus der Geschichte seines Charakters vor. Es muss narrativ plausibel sein — „Ich war Lehrling eines Schmieds" ist in Ordnung, wenn nichts dem widerspricht. Ihr genehmigt oder lehnt ab. Einmal akzeptiert, schreibt der Spieler es auf und es wird etabliert.

+ *Hilfsmittel:* Ein relevanter physischer Gegenstand gibt +1. Außergewöhnlich gute oder spezialisierte Werkzeuge (Meister-Dietriche, ein Chirurgenskalpell) können nach eurem Ermessen +2 geben. Improvisierte Werkzeuge (ein gebogener Nagel als Dietrich) geben trotzdem +1, aber ihr könntet die Schwierigkeit erhöhen.

+ *Übung:* Nachdem ein Charakter eine Aufgabe zum ersten Mal geschafft hat, bekommt er +1 für ähnliche Aufgaben ab dem _nächsten Tag_. Weitere +1 bei 10 kumulativen Erfolgen, +1 bei 100 usw. Übung repräsentiert wachsendes Muskelgedächtnis und Vertrauen.

+ *Verwandter Hintergrund:* Eine zuvor etablierte Fähigkeit, die plausibel übertragbar ist. „Ich kann schnell rennen" → „Ich kann weit springen." „Ich kenne Kräuter" → „Ich kann diese seltsame Pflanze identifizieren." Ihr entscheidet, ob die Verbindung eng genug ist.

+ *Rollenspiel:* Bei sozialen, künstlerischen oder überzeugenden Aufgaben verdient wirklich mitreißende Darstellung im Charakter +1. Der Spieler, der eine leidenschaftliche Rede _als sein Charakter_ hält, verdient mechanische Belohnung. Das ermutigt den Tisch, im Charakter zu bleiben.

+ *Motivation:* +1 wenn der Spieler tiefe persönliche Beweggründe erklärt, die in der Hintergrundgeschichte des Charakters verwurzelt sind. „Meine Mutter wurde der Hexerei beschuldigt — ich werde _nicht_ zulassen, dass das nochmal passiert" ist kraftvolle Motivation, die verzweifelte Stärke verleiht.

*Wie viele Fähigkeiten können sich stapeln?* Es gibt keine harte Obergrenze, aber jede Fähigkeit muss eine _eigenständige_ Begründung haben. „Ich bin stark UND ich bin sehr stark" ist eine Fähigkeit, nicht zwei. „Ich bin stark durch Feldarbeit (+1) UND ich habe eine Brechstange (+1) UND ich habe das schon mal gemacht (+1)" sind drei legitime Fähigkeiten.

*Widersprüchliche Hintergründe:* Wenn ein Spieler „Ich habe Höhenangst" etabliert hat und später Kletterfähigkeiten beanspruchen will, könnt ihr verlangen, dass er den Widerspruch durch die Geschichte auflöst — vielleicht ein dramatischer Moment der Überwindung seiner Angst.

#example(title: "Fähigkeiten in Aktion: Das Schloss")[
  #gm[Friedrich, du willst das Schloss der Kellertür knacken. Was bringst du mit?]

  #player("Friedrich")[Ich habe Dietriche — das ist ein Werkzeug, +1. Und ein Schlosser hat es mir einmal gezeigt, als ich neugierig auf sein Handwerk war — das ist ein etablierter Hintergrund, +1. Oh, und ich möchte meinen Inspirationswürfel einsetzen!]

  #gm[Dietriche, die Unterweisung des Schlossers und dein Moment inspirierter Konzentration. Das sind insgesamt 4W6 — dein Basiswürfel plus drei Fähigkeiten. Das Schloss ist alt aber solide: Schwierigkeit 4. Würfle!]

  #player("Friedrich")[4W6: 1, 3, 4, 6. Die 4 und 6 treffen beide!]

  #gm[Das Schloss öffnet sich mit einem befriedigenden _Klick_. Zwei Erfolge — saubere Arbeit. Friedrich, beschreib wie du es machst.]

  #player("Friedrich")[Ich schließe für einen Moment die Augen und erinnere mich an Meister Wendels Hände an den Dietrichen. ‚Fühle die Stifte,' sagte er. Ich atme aus... und da ist es. Der letzte Stift fällt an seinen Platz.]
]

#example(title: "Totaler Misserfolg: Nur Einsen")[
  Stellt euch vor, Friedrich hätte 1, 1, 1, 1 gewürfelt — jeder einzelne Würfel zeigt eine 1. Das ist nicht bloß Misserfolg; das ist eine Katastrophe. Der Dietrich bricht im Mechanismus ab und verklemmt ihn dauerhaft. Oder Friedrich rutscht ab und schneidet sich die Finger an der scharfen Metallkante, zieht Blut und alarmiert jemanden mit dem Geräusch.

  Wenn _jeder Würfel_ eine 1 zeigt, geht etwas denkwürdig, schmerzhaft über einfaches Scheitern hinaus schief. Ein Werkzeug bricht, eine Verletzung tritt ein, die Situation verschlechtert sich dramatisch.
]

=== Schritt 4: Der Wurf <the-roll>

Der Spieler würfelt seinen gesamten Würfelpool. Ihr würfelt nie für Spielercharaktere — die Würfel gehören ihnen. (Einzige Ausnahme: der geheime Erinnerungswürfel bei gescheiterten Wissensproben. Siehe @memory.)

=== Schritt 5: Ergebnisse lesen <results>

- *Irgendein Würfel ≥ Schwierigkeit:* Erfolg. Die Aufgabe ist geschafft.
- *Alle Würfel < Schwierigkeit:* Misserfolg. Die Aufgabe gelingt nicht.
- *Alle Würfel zeigen das Maximum (6):* Spektakulärer Erfolg! Etwas extra Gutes geschieht über das beabsichtigte Ergebnis hinaus — eine Bonusentdeckung, ein beeindruckter Zuschauer, ein Glücksfall. Erzählt großzügig.
- *Alle Würfel zeigen 1:* Katastrophaler Misserfolg. Etwas geht weit über einfaches Scheitern hinaus schief — ein Werkzeug bricht, eine Verletzung tritt ein, die Situation verschlechtert sich. Siehe das Beispiel oben.
- *Mehrere Erfolge (aber nicht alle 6er):* Generell ein sauberer, beeindruckenderer Erfolg — mehr Informationen, bessere Ausführung, ein zusätzlicher Vorteil. Nutzt euer Urteil.

=== Schritt 6: Spielererzählung <narration>

Der Spieler beschreibt, wie sein Charakter Erfolg hat oder scheitert. Ihr könnt Umgebungsreaktionen, Konsequenzen oder NSC-Reaktionen hinzufügen, aber die Kernbeschreibung der Handlung des Charakters gehört dem Spieler.

Hier gibt es einen gewissen Spielraum, und es hängt von der Spielerpersönlichkeit ab. Manche Spieler beschreiben genüsslich ihre eigenen Katastrophen: „Ich schneide mir den Finger am scharfen Metall und japse auf!" Andere bevorzugen ein knappes „Ich scheitere" und brauchen euch, um die Fiktion zu füllen und das Tempo zu halten. Beides ist in Ordnung. Lest euren Tisch und passt euch an — manchmal erzählt ihr mehr, manchmal tretet ihr zurück. Das Ziel ist immer Vorwärtsmomentum und Immersion.

*Wenn ein Spieler etwas erzählt, das der Mechanik widerspricht:* Lenkt sanft um. „Das ist eine lebhafte Beschreibung! Aber da du gescheitert bist, gibt die Mauer nicht nach. Wie geht es stattdessen schief?"

#example(title: "Spielererzählung in Aktion")[
  #gm[Du hast eine 2 gegen Schwierigkeit 4 gewürfelt — die moosige Mauer besiegt dich. Wie geht es schief?]

  #player("Friedrich")[Ich komme zur Hälfte hoch, finde was ich für einen soliden Griff halte — aber er bröselt weg. Nasses Moos und Kies rieseln herunter, als ich zurück zu Boden rutsche, die Handflächen am rauen Stein aufgeschürft.]

  #gm[Perfekt. Deine Hände brennen, dein Stolz noch mehr. Die Mauer steht unerobert... vorerst.]
]

== Inspirationswürfel <inspiration>

Inspiration ist eure Art, die Momente zu belohnen, die das Spiel zum Singen bringen — der Geistesblitz, die Szene die allen Gänsehaut gibt, der Witz der den ganzen Tisch zum Weinen vor Lachen bringt.

Vergebt einen Inspirationswürfel für:
- Einen Moment wirklich denkwürdigen Rollenspiels
- Eine clevere Lösung, mit der ihr nie gerechnet habt
- Eine Aktion, die den Tisch zum Staunen oder Auflachen bringt
- Ein Opfer oder eine Entscheidung, die die Geschichte vertieft

*Regeln:*
- Ein Spieler kann *einen* Inspirationswürfel gleichzeitig halten.
- Er kann bei *jedem* zukünftigen Wurf als +1W6 eingesetzt werden.
- Einmal eingesetzt, ist er verbraucht.
- Er kann nicht an andere Spieler weitergegeben werden.
- Der Spieler sollte diesen Würfel getrennt aufbewahren — vielleicht eine andere Farbe — damit alle sehen können, wer Inspiration hält.

#example(title: "Inspiration vergeben")[
  #player("Friedrich")[_(steht vom Tisch auf, spricht im Charakter)_ „Ich wurde Apotheker, weil mein Vater an einem Fieber starb, das niemand behandeln konnte. Jedes Kraut das ich lerne, jede Tinktur die ich braue — es ist für ihn. Ich werde nicht zulassen, dass eine andere Familie jemanden an Unwissenheit verliert."]

  #gm[_(nach einem Moment der Stille am Tisch)_ Das war wirklich berührend. Nimm einen Inspirationswürfel — den hast du dir verdient. Bewahre ihn sichtbar auf; du wirst wissen, wann der Moment gekommen ist, ihn einzusetzen.]
]

== Gescheiterte Aufgaben wiederholen <retries>

Ein Charakter darf eine gescheiterte Aufgabe erneut versuchen, aber *Zeit vergeht* und *Umstände ändern sich*. Die Mauer steht noch, aber jetzt ist die Patrouille näher. Das Schloss widersteht, aber jetzt wird der Begleiter ungeduldig. Jeder neue Versuch sollte sich anders anfühlen — erhöhte Einsätze, ein neuer Ansatz oder sich verschlechternde Bedingungen.

*Übungsbonus:* Eine heute geglückte Aufgabe gibt +1 ab dem _nächsten Tag_. Nicht sofort — die Fähigkeit braucht Zeit, um sich im Charakter zu festigen.

*Neuer Tag:* Ein neuer Spieltag aktiviert alle Übungsboni, die am Vortag verdient wurden.

= Duelle <duels>

== Wann ein Duell verwenden

Verwendet Duelle wann immer zwei Charaktere *entgegengesetzte* Ziele gleichzeitig verfolgen — wann immer aktiver Widerstand von einem denkenden Gegner kommt. Verfolgungsjagden durch Marktgedränge, Schwertkämpfe in schlammigen Gassen, Armdrücken über Bierkrügen, hitzige Debatten vor einer Menge, Wettrennen am Flussufer, Tauziehen um einen gestohlenen Beutel.

Verwendet *keine* Duelle wenn:
- Eine Seite nichts ahnt (verwendet eine Standardaufgabe — z.B. an einem schlafenden Wächter vorbeischleichen).
- Der Widerstand passiv oder umweltbedingt ist (verwendet eine Standardaufgabe — z.B. gegen eine Strömung schwimmen).

== Duellablauf <duel-procedure>

+ Schwierigkeit für *jede* Seite unabhängig festlegen, basierend auf ihren Umständen.
+ Jede Seite zählt ihre anwendbaren Fähigkeiten.
+ Beide Seiten würfeln gleichzeitig.
+ Vergleicht *Anzahl der Erfolge* (Würfel ≥ jeweilige Schwierigkeit).
+ Wer mehr Erfolge hat, gewinnt die Runde.
+ Der Gewinner erzählt seinen Triumph; der Verlierer erzählt seinen Rückschlag.

*Asymmetrische Schwierigkeit:* Ein schwerer Charakter, der sich durch eine enge Gasse drängt (Schwierigkeit 5) vs. ein kleiner, flinker Charakter (Schwierigkeit 3). Beide würfeln, aber die Erfolge des kleinen Charakters kommen leichter — die Welt begünstigt ihn in diesem Moment.

*Eine Seite hat keine Fähigkeiten:* Sie würfelt 1W6. Sie ist im Nachteil, aber ein glücklicher Wurf kann trotzdem alle überraschen.

== Gleichstand <duel-ties>

Bei Gleichstand gewinnt keine Seite Boden. Aber die Welt steht nicht still:
- *Zeit vergeht.* Macht das in der Fiktion bedeutsam: Wachen nähern sich, Regen setzt ein, ein Zeuge biegt um die Ecke, eine Kerze flackert aus.
- Jede Seite wählt: *Weitermachen* oder *Aufgeben*.

Wenn sich Gleichstände wiederholen und die Szene ins Stocken gerät, könnt ihr die Umstände ändern, um die Pattsituation aufzubrechen — das Gelände ändert sich, Erschöpfung setzt ein (Schwierigkeit um 1 für beide erhöhen) oder eine äußere Kraft greift ein. Das ist ein Vorschlag für gutes Pacing, keine harte Regel; nutzt so viele Runden wie die Szene verlangt.

== Mehrrundige Duelle <multi-round>

Zwischen Runden könnt ihr:
- Charakteren erlauben, Werkzeuge oder Waffen zu greifen (+1).
- Schwierigkeit anpassen, wenn sich das Gelände ändert.
- Eine bedeutungsvolle Wahl einführen: „Du kannst das Brot behalten (Schwierigkeit +1) oder es fallen lassen und dich aufs Rennen konzentrieren."
- Eine *separate Aufgabe* vor der nächsten Duellrunde verlangen (z.B. über einen umgestürzten Karren springen).

*Eingeschobene Aufgaben:* Ein Charakter mitten in einer Verfolgung muss möglicherweise eine Mauer überspringen (separate Aufgabe, Schwierigkeit 4). Bei Misserfolg entscheidet ihr die Konsequenz — vielleicht gewinnt der Gegner einen Vorsprung von 1 automatischem Erfolg in der nächsten Duellrunde.

*Aufgeben:* Ein Charakter, der aufgibt, kann Bedingungen vorschlagen („Ich lasse das Brot fallen, wenn du mich gehen lässt"). Die andere Seite ist nicht verpflichtet anzunehmen.

== Kampf als Duelle <combat>

Kampf ist einfach Duelle mit tödlichen Einsätzen. Der gleiche Ablauf gilt, mit diesen Ergänzungen:

- *Niederlage:* Ein Kampfduell zu verlieren bedeutet für diese Auseinandersetzung *außer Gefecht* zu sein. Anders als in vielen anderen Pen-and-Paper-Spielen gibt es in Bamberg Tavern keine Trefferpunkte.
- *Stufen:* Wichtige NSCs oder Bosse können 2–3 Stufen haben — sie müssen so viele Duelle verlieren, bevor sie wirklich besiegt sind. Jede Stufe repräsentiert einen dramatischen Wandel in der Begegnung: der erste Treffer sprengt den Brustpanzer, der zweite zieht Blut und der Feind taumelt, der dritte bringt ihn auf die Knie. Macht jede Stufe spürbar unterschiedlich.
- *Waffen als Hilfsmittel:* Eine Waffe gibt +1 (oder mehr für außergewöhnliche Waffen).
- *Rüstung:* Kann die Schwierigkeit des Gegners zu treffen erhöhen oder +1 defensive Fähigkeit geben.

*Schlecht sitzende Rüstung:* Eine im Keller gefundene Rüstung könnte +1 Verteidigung geben, aber +1 Schwierigkeit auf alle Bewegungsaufgaben auferlegen — sie klappert und zwickt.

*Mehrere Angreifer:* Behandelt es als Gruppenduell. Jeder Angreifer würfelt einzeln gegen den Verteidiger. Der Verteidiger würfelt einmal gegen den fähigsten Angreifer. Vergleicht Gesamterfolge jeder Seite.

#example(title: "Ein Duell wird lebendig: Die Brotjagd")[
  _Katharina ist ein Spielercharakter. Helmut ist ein NSC, gespielt vom SL._

  #gm[Der Grüne Markt ist Chaos — Fischhändler schreien, ein Kohlkarren ist umgestürzt. Ihr seht Helmut einen Laib vom Bäckerstand greifen und in die Menge flüchten. Katharina, was tust du?]

  #player("Katharina")[Ich jage ihn! Ich bin es gewohnt, meinen älteren Brüdern auszuweichen — ich bin schnell auf den Beinen.]

  #gm[Eine Verfolgung durch den Markt! Das ist ein Duell. Katharina, du bist flink und klein — Schwierigkeit 3 für dich. Helmut ist schnell aber die Menge ist dicht und er trägt Brot — Schwierigkeit 4 für ihn. Du hast +1 von deinem Hintergrund „schnell auf den Beinen". Helmut hat +1 vom Straßenrennen. Würfelt!]

  #player("Katharina")[2W6: 5 und 2. Ein Erfolg!]

  #gm[Helmut würfelt 2W6: 4 und 3. Auch ein Erfolg. _Gleichstand!_ Ihr schlängelt euch beide durch die Menge, Kopf an Kopf. Marktleute fluchen und weichen aus. Eine Frau lässt ihren Zwiebelkorb fallen und sie kullern überall hin. Keiner gewinnt Boden. Jagst du weiter?]

  #player("Katharina")[Auf jeden Fall! Ich rufe „Haltet den Dieb!"]

  #gm[Runde zwei. Gleiche Fähigkeiten, gleiche Schwierigkeit — aber Helmut trifft eine Entscheidung. Er versucht eine Auslage von Tonkrügen umzuwerfen, um deinen Weg zu blockieren. Das ist eine separate Aufgabe für ihn: Schwierigkeit 3, er würfelt... 5. Erfolg! Scherben klirren über die Pflastersteine.]

  #gm[Katharina, du musst über die Trümmer springen. Separate Aufgabe: Schwierigkeit 4. Du hast deinen „flink"-Hintergrund. Würfle 2W6.]

  #player("Katharina")[4 und 6! Ich schaff's!]

  #gm[Du springst über das Chaos wie eine Katze, ohne einen Schritt zu verlieren. Die Menge staunt. Jetzt — zurück zum Duell. Würfle!]

  #player("Katharina")[2W6: 6 und 3. Zwei Erfolge!]

  #gm[Helmut: 2W6: 2 und 4. Ein Erfolg. Du hast ihn! Du bist schneller — sein Brotarm bremst ihn. Was tust du?]

  #player("Katharina")[Ich tackele ihn in den Kohlhaufen!]

  #gm[Neues Duell — ein Ringen! Helmut hat eine Wahl: Brot behalten (+1 Schwierigkeit für ihn, da ein Arm belegt ist) oder fallen lassen. Er klammert sich ans Brot. Würfle!]

  #player("Katharina")[2W6: 3 und 5. Zwei Erfolge gegen Schwierigkeit 3!]

  #gm[Helmut, behindert: 2W6 gegen Schwierigkeit 5... 3 und 2. Null Erfolge. Du rammst ihn und er geht in einer Dusche aus Kohlblättern zu Boden. Das Brot fliegt aus seiner Hand und du fängst es — noch warm. Der Bäcker jubelt von der anderen Seite des Platzes.]
]

= Erinnerung, Wissen & Forschung <memory>

== Die Regel

Wenn ein Charakter versucht sich an eine Tatsache zu erinnern, ein Dokument zu erforschen, ein Rätsel zu lösen oder in einem Gespräch Informationen zu extrahieren, verwendet ihr die Erinnerungsmechanik. Das ist eines der markantesten Merkmale von Bamberg Tavern — es bedeutet, dass Spielende nie ganz sicher sein können, ob das Wissen ihres Charakters korrekt ist.

+ Schwierigkeit festlegen (oft *verborgen* — der Spieler weiß nicht, wie schwer die Frage ist).
+ Fähigkeiten zählen (Gelehrtenhintergrund, Vertrautheit mit dem Thema, relevante Hilfsmittel wie Bücher oder Notizen).
+ Der Spieler würfelt.

*Bei Erfolg:* Der Charakter erfährt die korrekte Information. Mehrere Erfolge können Bonusdetails liefern — tieferen Kontext, verwandte Fakten, Implikationen.

*Bei Misserfolg:* Ihr würfelt 1W6 *verdeckt*:
- *1–2:* Der Charakter findet nichts. Sagt: „Es fällt dir nichts ein" oder „Der Text scheint undurchdringlich."
- *3–4:* Der Charakter erhält *Falschinformation* — und _glaubt sie vollständig_. Präsentiert falsche Information mit der gleichen Überzeugung wie Wahrheit.
- *5–6:* Der Charakter erhält die *Wahrheit* trotz des Misserfolgs. Präsentiert sie identisch zu einem Erfolg.

#rule-box[
  Der Spieler *weiß nie*, welches Misserfolgsergebnis eingetreten ist. Aus seiner Perspektive sehen alle drei identisch aus. Das ist das Herz der Mechanik: Wissen ist unsicher, Erinnerung ist fehlbar, und Spielende müssen auf Informationen handeln, denen sie nicht vollständig vertrauen können.
]

Diese Mechanik ist besonders wirkungsvoll für:
- Kräuter, Tränke oder Substanzen identifizieren
- Historische Fakten oder Gerüchte erinnern
- In der Bibliothek oder im Archiv forschen
- Das Gesicht eines Fremden erkennen
- Einen alten Text übersetzen
- Die Absichten einer Person lesen (lügt sie?)

*Spieler-Metagaming:* Wenn ein Spieler auf Basis von Außer-Charakter-Verdacht handelt, erinnert ihn sanft: „Dein Charakter ist sich _sicher_. Friedrich glaubt aufrichtig, das seien Lavendelblüten."

*Mehrere Charaktere, gleiche Frage:* Jeder würfelt unabhängig. Sie könnten widersprüchliche Antworten bekommen — und das ist wunderbar! Lasst die Charaktere in der Fiktion debattieren. „Ich sage dir, das ist Nachtschatten!" „Unsinn, das ist eindeutig Lavendel!"

*Unmögliches Wissen:* Manchmal hat eine Frage keine Antwort, weil die Information in der Welt schlicht nicht existiert. Ihr könnt auch dafür verdeckt würfeln — die Gruppe versucht eine Suche mit verborgener Schwierigkeit, und egal wie gut sie würfeln, können sie nicht erfolgreich sein, weil die Information nicht da ist.

#example(title: "Eine Szene mit Falschinformation")[
  #gm[Auf dem Tisch vor euch liegt ein kleines Bündel mysteriöser getrockneter Kräuter, mit grobem Bindfaden zusammengebunden. Friedrich, du willst sie identifizieren?]

  #player("Friedrich")[Ja! Ich war drei Jahre Apothekerlehrling — ich sollte Pflanzen kennen.]

  #gm[Das gibt dir +1 aus deinem Hintergrund. Würfle 2W6. _(Geheime Schwierigkeit: 5 — diese sind sehr ungewöhnliche Kräuter aus einem fernen Land.)_]

  #player("Friedrich")[Ich habe eine 3 und eine 4 gewürfelt.]

  #gm[_(Beide unter 5 — Misserfolg. Würfelt verdeckt: eine 3 — Falschinformation.)_ Friedrich, du drehst das Bündel in den Händen, reibst ein Blatt zwischen Daumen und Zeigefinger, riechst daran. Ja — du bist dir sicher. Das ist getrockneter Lavendel, die Sorte die in beruhigenden Tinkturen verwendet wird. Vollkommen harmlos.]

  #player("Friedrich")[Super! Ich sage den anderen: „Es ist nur Lavendel, keine Sorge. Wahrscheinlich für einen Schlaftrunk."]

  #gm[Die Gruppe entspannt sich. Friedrichs Charakter glaubt das aufrichtig. Ob es _stimmt_... nun, das bleibt abzuwarten.]

  _Angewandte Regeln: Erinnerungsaufgabe mit verborgener Schwierigkeit. Friedrich scheiterte und der SL würfelte 3 auf dem geheimen Würfel, was zu überzeugter Falschinformation führt. Friedrichs Spieler muss so spielen, als wäre die Information sicher korrekt._
]

#example(title: "Unmögliches Wissen: Suche nach dem was nicht da ist")[
  Die Gruppe durchsucht ein Haus nach Brot. Ihr entscheidet verdeckt: Es _gibt_ kein Brot hier. Ihr setzt Schwierigkeit 3 und würfelt selbst — ihr bekommt eine 2, was bestätigt, dass das Haus leer ist. Die Gruppe sucht als Gruppenprobe gegen eine verborgene Schwierigkeit. Egal was sie würfeln, finden sie nichts — aber sie wissen nicht, ob sie Brot nicht gefunden haben das existiert, oder ob das Brot schlicht nicht da ist.
]

= Gruppenaufgaben & Hilfe <group>

== Gruppenaufgaben

Wenn Charaktere *gemeinsam* auf ein einziges geteiltes Ziel hinarbeiten — einen Steinblock heben, einen Karren ziehen, einen Raum durchsuchen — bündeln sie ihre Kräfte in einem mächtigen Wurf.

- Poolt alle Basiswürfel und alle anwendbaren Fähigkeiten der Teilnehmer in *einem* kombinierten Pool.
- Legt *eine* Schwierigkeit für die Gruppe fest.
- Die Gruppe würfelt einmal, zusammen.
- Sie hat gemeinsam Erfolg oder Misserfolg.

Ein Charakter ohne relevante Fähigkeit trägt trotzdem seinen Basis-1W6 bei — jedes Paar Hände hilft, auch untrainierte. Aber die Teilnahme ist eine _Wahl_. Ein Spieler kann entscheiden, dass sein Charakter zurückbleibt, zusieht oder etwas ganz anderes tut. Nicht jeder muss bei jeder Gruppenaufgabe mitmachen.

*Gruppen-Erinnerungsaufgabe:* Wenn mehrere Personen sich gemeinsam an etwas erinnern wollen, poolt ihre Fähigkeiten. Bei Misserfolg betrifft der Falschinformationswurf die _ganze_ Gruppe — alle erhalten die gleiche (möglicherweise falsche) Information und glauben sie gemeinsam.

#example(title: "Gruppenaufgabe: Der Steinblock")[
  #gm[Der Eingang zum alten Keller ist von einem massiven Steinblock versiegelt, glitschig vor Moos. Keiner von euch könnte ihn allein bewegen. Wer hilft?]

  #player("Anna")[Ich schiebe mit. Ich bin stark von Jahren der Feldarbeit — das ist +1.]

  #player("Friedrich")[Ich klemme einen Ast darunter als Hebel. Das ist ein Werkzeug — +1.]

  #player("Margarethe")[Ich... ich glaube nicht, dass ich etwas Nützliches beitragen kann. Aber ich schiebe trotzdem!]

  #gm[Alle tragen bei. Drei Charaktere = 3 Basiswürfel, plus Annas Feldarbeit, plus Friedrichs Hebel = insgesamt 5W6. Der Stein ist riesig — Schwierigkeit 5. Würfelt!]

  #player("Anna")[5W6: 2, 5, 3, 6, 1. Die 5 und 6 treffen beide!]

  #gm[Mit einem mahlenden Stöhnen verschiebt sich der Stein, kippt und gleitet zur Seite. Kühle, feuchte Luft strömt von unten herauf, mit dem süßen Duft von alter Erde und etwas anderem — etwas leicht Süßlichem. Süßholzwurzel.]
]

== Hilfe <helping>

Manchmal führt nur *ein* Charakter die Handlung aus — ein Schloss knacken, einen Wächter überzeugen, einen Text übersetzen — während andere Unterstützung leisten. Das unterscheidet sich von einer Gruppenaufgabe: Helfer fügen riskante Bonuswürfel hinzu, anstatt voll zu poolen.

- Jeder Helfer fügt genau *1 Würfel* zum Pool des Hauptcharakters hinzu — ungeachtet der eigenen Fähigkeiten des Helfers. Seine Expertise wird in diesem einzelnen Würfel abstrahiert.
- Hilfewürfel tragen *kritisches Risiko*:
  - *Hilfewürfel zeigt 2:* Der Beitrag des Helfers scheitert still. Entfernt seinen Würfel — er trägt nichts bei.
  - *Hilfewürfel zeigt 1:* Katastrophe! Die *gesamte Aufgabe scheitert* automatisch, egal was die anderen Würfel zeigen. Der Helfer erzählt, wie seine Unterstützung katastrophal schiefgeht.

*Ablauf:*
+ Kündigt an, welche Würfel wem gehören. Verwendet verschiedenfarbige Würfel für Helfer, oder würfelt separat.
+ Der SL weist die Spieler an, unterscheidbare Würfel zu verwenden _bevor_ jemand würfelt.
+ Prüft Hilfewürfel *zuerst*:
  - Irgendeine 1? → Die ganze Aufgabe scheitert sofort. Der Helfer, dessen Würfel 1 zeigte, beschreibt die Katastrophe.
  - Irgendeine 2? → Entfernt diese Würfel; sie haben nichts beigetragen.
+ Dann bewertet die verbleibenden Würfel normal gegen die Schwierigkeit.

*Mehrere Helfer:* Jeder fügt 1 Würfel hinzu. Jeder wird unabhängig geprüft. Wenn _irgendeiner_ eine 1 zeigt, scheitert die ganze Aufgabe.

*Hilfe im Duell:* Ein Helfer kann eine Seite eines Duells mit den gleichen Regeln unterstützen (1 Würfel, gleiches Risiko bei 1 oder 2).

#example(title: "Hilfe geht schief")[
  #gm[Friedrich versucht den Nachtwächter zu überzeugen, euch in die Zellen zu lassen. Friedrich, deine gebildete Sprache gibt dir +1. Schwierigkeit 4. Anna und Margarethe — wollt ihr helfen?]

  #player("Anna")[Ja! Ich werde seine Geschichte stützen — ich sage, der Gefangene sei mein Onkel.]

  #player("Margarethe")[Ich stehe dahinter und sehe tränenreich und mitfühlend aus — vielleicht erweicht das den Wächter.]

  #gm[Gut. Verwendet verschiedene Farben für die Würfel. Friedrich — nimm die weißen Würfel für deine 2W6. Anna — nimm einen blauen für deine Hilfe. Margarethe — nimm einen roten. Würfelt!]

  #player("Friedrich")[Weiße: 4, 5. Blauer (Anna): 3. Roter (Margarethe): 1.]

  #gm[Halt. Wir prüfen Hilfewürfel zuerst. Margarethes roter Würfel zeigt *1* — das ist eine Katastrophe. Die gesamte Aufgabe scheitert, egal was Friedrich gewürfelt hat. Margarethe, was geht schief?]

  #player("Margarethe")[Ich versuche tränenreich auszusehen, aber ich übertreibe — ich fange tatsächlich an zu weinen und platze heraus: „Bitte, ihr müsst uns zu ihm lassen, er ist unschuldig!" Der Ausdruck des Wächters verhärtet sich: „Unschuldig? Das entscheidet das Gericht. Und niemand besucht ohne das Siegel des Bischofs. Raus — alle — bevor ich eure Namen auf die Liste setze."]

  #gm[Das Eisentor knallt zu. Die Fackel flackert. Ihr braucht einen anderen Weg zum Gefangenen.]
]

= Die Stadt Bamberg <bamberg>

Bamberg in den 1620er Jahren ist eine Stadt der Kontraste — Wohlstand und Paranoia, Schönheit und Grausamkeit. Der Fürstbischof hält weltliche und geistliche Macht. Die Gärten blühen mit exotischen Pflanzen aus fernen Ländern. Und im Schatten des Doms gewinnen die Hexenprozesse an Fahrt.

Wichtige Orte auf dem Zweidler-Plan:
- *Grüner Markt:* Der grüne Markt — Herz des täglichen Lebens, Klatsch und Handels.
- *Gärtnerstadt:* Das Gärtnerviertel — Beete mit Süßholz, Gemüse, Kräutern und Blumen.
- *Der Dom:* Sitz der Macht des Fürstbischofs.
- *Der Kranen:* Flusshafen und geschäftiger Hafenbereich.
- *Malefizhaus:* Das Hexengefängnis — ein Ort des Schreckens.

Sprachen denen ihr begegnen könnt:
- *Latein:* Sprache der Gelehrten, des Klerus und des Rechts.
- *Jiddisch:* Gesprochen in der jüdischen Gemeinde.
- *Französisch:* Sprache der Diplomatie und einiger Händler.
- *Rotwelsch:* Gaunersprache — die geheime Zunge der Unterwelt.

Charaktere die diese Sprachen beherrschen, können heimlich kommunizieren. Verstehen erfordert den entsprechenden Hintergrund.

== Der Zweidler-Plan <the-map>

Die physische Karte von Bamberg steht den Spielern am Tisch zur Verfügung. Sie ist nicht nur Dekoration — sie ist ein lebendiges Werkzeug:

- Spieler dürfen sie untersuchen, um Routen durch die Stadt zu planen.
- Sie dürfen für Abkürzungen argumentieren: „Schaut, da verbindet eindeutig eine Gasse diese beiden Straßen!"
- Bei Navigationsaufgaben kann das Referenzieren der Karte die Schwierigkeit um 1 senken.
- Ihr könnt auf Orte zeigen während der Erzählung, um die Geschichte geographisch zu verankern.

Nutzt die Karte aktiv und oft. Sie zieht die Spielenden in den Raum hinein, macht die Stadt real und belohnt Neugier.

= SL-Prinzipien <principles>

Dies sind keine Regeln — sie sind der Geist hinter den Regeln. Bewahrt sie nahe am Herzen während ihr spielt.

+ *Sagt ja oder lasst würfeln.* Wenn ein Spieler etwas Vernünftiges vorschlägt, lasst es entweder geschehen oder macht eine Aufgabe daraus. Sagt nie „nein", wenn ihr „ja, aber würfle dafür" sagen könntet.
+ *Schwierigkeit spiegelt die Welt wider, nicht den Charakter.* Eine verschlossene Tür ist für alle gleich schwer. Die _Fähigkeiten_ des Charakters machen den Unterschied.
+ *Lasst Spielende erzählen.* Ihre Kreativität bereichert das Spiel auf Weisen, die ihr nicht vorhersehen könnt. Gebt ihnen Raum.
+ *Falschinformation ist ein Geschenk.* Wenn Erinnerung versagt und Lügen entstehen, folgt Drama ganz natürlich. Lehnt euch hinein.
+ *Zeit ist eine Ressource.* Gleichstände und Wiederholungen kosten Zeit — macht Zeit in der Fiktion bedeutsam. Jemand nähert sich immer, etwas verändert sich immer.
+ *Die Karte lebt.* Nutzt den Zweidler-Plan aktiv. Zeigt darauf, fragt „wo genau geht ihr hin?", lasst Spielende Routen entdecken.
+ *Immersion über alles.* Jede Regel dient einem Zweck: Allen am Tisch zu helfen, in Bamberg 1620 zu _sein_. Wenn eine Regel dem im Weg steht, biegt sich die Regel.

= Kurzreferenz <reference>

#table(
  columns: (1fr, 2fr),
  [*Mechanik*], [*Zusammenfassung*],
  [Aufgabe], [1W6 + Fähigkeitswürfel; irgendein Würfel ≥ Schwierigkeit = Erfolg],
  [Alle 6er], [Spektakulärer Erfolg — extra gutes Ergebnis],
  [Alle 1er], [Katastrophaler Misserfolg — etwas geht furchtbar schief],
  [Duell], [Beide Seiten würfeln; mehr Erfolge gewinnt die Runde],
  [Gleichstand], [Keiner gewinnt Boden; Zeit vergeht; weitermachen oder aufgeben],
  [Erinnerung-Misserfolg], [SL würfelt verdeckt: 1–2 nichts, 3–4 Falschinformation, 5–6 Wahrheit],
  [Gruppenaufgabe], [Alle Würfel der Teilnehmer in einem Pool kombinieren],
  [Hilfewürfel = 2], [Diesen Würfel entfernen — er hat nichts beigetragen],
  [Hilfewürfel = 1], [Gesamte Aufgabe scheitert automatisch],
  [Inspiration], [+1W6 einmal, dann verbraucht; Würfel getrennt aufbewahren],
  [Übung], [+1 ab nächstem Tag nach erstem Erfolg],
  [Hilfsmittel], [+1 (oder mehr für außergewöhnliche Qualität)],
  [Motivation], [+1 mit tiefer Hintergrundbegründung],
  [Kampfniederlage], [Außer Gefecht für die Begegnung (keine Trefferpunkte)],
  [Boss-Stufen], [Wichtige Feinde haben 2–3 Stufen vor wahrer Niederlage],
)
