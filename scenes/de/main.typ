#import "../../books/common/template.typ": *

#show: bamberg-book.with(
  title: "Bamberg Tavern",
  subtitle: "Beispielszenen",
  lang: "de",
)

= Einleitung

Diese Szenen demonstrieren die Regeln des Bamberg Tavern-Rollenspiels in Aktion, dargestellt als Dialoge zwischen dem Spielleiter (SL) und den Spielenden. Jede Szene behandelt eine oder mehrere Kernmechaniken und spielt sich im Bamberg des frühen 17. Jahrhunderts ab.

= Szene 1: Die Kräutergartenjagd

#line(length: 100%, stroke: 0.5pt)

#gm[Ihr seid in den weitläufigen Gärten hinter der Gärtnerstadt. Reihen von Süßholzpflanzen erstrecken sich zum Fluss hin, ihre dunklen Blätter rascheln im Morgenwind. Ein reisender Samenhändler, _Johann_, hat euch angeheuert, um einen seltenen Ableger der Süßwurzel zu finden, der heute Morgen von seinem Karren gestohlen wurde. Der Tau ist noch frisch auf den Beeten — und dort, zwischen den Reihen, entdeckt ihr schlammige Fußabdrücke. Was tut ihr?]

#player("Anna")[Ich kauere nieder und untersuche die Abdrücke. Ich bin auf einem Bauernhof aufgewachsen — jeden Morgen habe ich die Felder nach Fuchsspuren, Kaninchenlöchern und Wildpfaden abgesucht. Ich weiß, wie man Boden liest.]

#gm[Das ist ein klarer Hintergrund. Du bekommst +1W6 von deiner Bauernerfahrung. Der Boden ist feucht und die Spuren sind frisch — das ist eine Aufgabe. Wirf 2W6.]

#player("Anna")[Was ist die Schwierigkeit?]

#gm[_(Entscheidet verdeckt: Schwierigkeit 3. Die Spuren sind deutlich, aber es gibt mehrere überlappende Pfade von den Gärtnern, die hier täglich arbeiten.)_ Wirf und lass uns sehen, was passiert.]

#player("Anna")[Ich habe eine 2 und eine 5 gewürfelt.]

#gm[Die 5 schlägt die Schwierigkeit — Erfolg! Anna, wie folgst du der Spur?]

#player("Anna")[Ich schiebe die Süßholzblätter beiseite und verfolge die Linie der Abdrücke — sie sind auf der linken Seite tiefer, jemand trägt etwas Schweres in der rechten Hand. Die Spur führt zu einer Lücke im Weidenzaun, wo Fetzen brauner Wolle am Geflecht hängen. Jemand ist kürzlich durchgeschlüpft.]

#gm[Ausgezeichnet. Durch die Lücke seht ihr einen überwucherten Pfad zum alten Klostergarten. Die Spuren setzen sich fort.]

#example(title: "Angewandte Regeln")[
  *Grundlegende Aufgabenlösung* mit verborgener Schwierigkeit. Der SL hat Schwierigkeit 3 verdeckt festgelegt. Anna hatte 1 Basiswürfel + 1 Fähigkeit (Bauerntum-Hintergrund) = 2W6. Ein Würfel zeigte 5, was die Schwierigkeit erfüllt. Der Spieler hat das erfolgreiche Ergebnis erzählt.
]

= Szene 2: Der verdächtige Brauer

#line(length: 100%, stroke: 0.5pt)

#gm[Ihr kommt zu Meister Albrechts Brauerei am Kranen. Dampf steigt aus den Kupferfässern und die Luft ist schwer vom Duft nach Malz und Hopfen. Aber ihr bemerkt etwas Ungewöhnliches — getrocknete Kräuter hängen von den Dachbalken, die in kein gewöhnliches Braurezept passen. Dunkle Blätter, unbekannte Blüten. Friedrich, willst du genauer hinschauen?]

#player("Friedrich")[Unbedingt. Ich war drei Jahre Lehrling eines Apothekers — ich sollte Pflanzen erkennen.]

#gm[Eine Erinnerungsaufgabe. Du hast +1 von deinem Apotheker-Hintergrund. Wirf 2W6.]

#player("Friedrich")[3 und 2.]

#gm[_(Die verborgene Schwierigkeit war 5 — das sind exotische Kräuter aus dem Fernen Osten, weit jenseits des gewöhnlichen Trainings eines Bamberger Lehrlings. Friedrich ist gescheitert. Würfelt verdeckt: eine 3 — Falschinformation.)_ Friedrich, du untersuchst die hängenden Bündel sorgfältig. Du reibst ein Blatt zwischen Daumen und Zeigefinger, hältst es an die Nase. Ja — du bist dir ganz sicher. Das ist eine Art mediterraner Lavendel, getrocknet zur Haltbarmachung. Brauer verwenden ihn manchmal, um Sommerale zu aromatisieren. Vollkommen gewöhnlich.]

#player("Friedrich")[Ich wende mich an die anderen. „Es ist nur Lavendel. Manche Brauer benutzen ihn für den Geschmack — hier ist nichts Ungewöhnliches."]

#gm[Friedrichs Charakter ist völlig überzeugt von dieser Bestimmung. Die Gruppe entspannt sich. Ob Friedrich _recht hat_... das bleibt abzuwarten.]

#example(title: "Angewandte Regeln")[
  *Erinnerungs-/Wissensaufgabe* mit verborgener Schwierigkeit (5). Friedrich ist gescheitert und der SL hat beim geheimen Würfelwurf eine 3 gewürfelt — Falschinformation. Friedrich glaubt nun aufrichtig, die Kräuter seien Lavendel. Der SL hat diese falsche Information mit derselben Überzeugung präsentiert wie die Wahrheit. Der Spieler muss entsprechend mitspielen.
]

= Szene 3: Die Marktjagd

#line(length: 100%, stroke: 0.5pt)

#gm[Der Grüne Markt ist im Chaos. Eine Frau, _Margarethe_, wurde öffentlich vom Gewürzhändler der Hexerei beschuldigt. Sie versucht, durch die Menge zur Austraße zu fliehen, bevor die Männer des Bischofs eintreffen. Der Sohn des Händlers, _Lorenz_, verfolgt sie. Margarethe — du rennst um dein Leben. Lorenz — du verfolgst. Das ist ein *Duell*.]

#player("Margarethe")[Ich bin klein und wendig — ich habe mein ganzes Leben damit verbracht, meinen älteren Brüdern auszuweichen, wenn sie wütend waren. Ich weiß, wie man sich durch enge Räume schlängelt.]

#player("Lorenz")[Ich bin stark und schnell. Jeden Morgen schleppe ich Pfeffersäcke zum Lagerhaus, bevor der Markt öffnet.]

#gm[Ihr bekommt beide +1 Fähigkeit. Margarethe, der Markt ist vollgepackt mit Menschen und Karren — Schwierigkeit *4* für dich. Lorenz, du bist größer und die Menge weicht dir nicht so leicht aus — Schwierigkeit *5*. Würfelt!]

#player("Margarethe")[2W6: 4 und 6. Das sind zwei Erfolge!]

#player("Lorenz")[2W6: 5 und 3. Ein Erfolg.]

#gm[Margarethe zieht davon! Sie duckt sich zwischen zwei Fischständen durch, dreht um eine erschrockene Frau mit einem Korb voller Aale und gewinnt eine volle Straßenlänge Vorsprung. Lorenz, derselbe Korb schwingt euch in den Weg — ihr stolpert, verliert einen Schritt. Verfolgst du weiter?]

#player("Lorenz")[Ich dränge mich daran vorbei. Ja, ich mache weiter!]

#gm[Nächste Runde. Gleiche Fähigkeiten, gleiche Schwierigkeiten. Würfelt!]

#player("Margarethe")[1 und 4. Ein Erfolg.]

#player("Lorenz")[5 und 2. Ein Erfolg.]

#gm[Gleichstand! Ihr rennt Seite an Seite durch die enge Gasse hinter der Kirche. Margarethes Atem geht rasselnd; Lorenz' schwere Schritte hallen von den Steinmauern wider. Keiner gewinnt Boden. Die Gasse öffnet sich auf die Austraße — aber ihr hört das Klirren der Bischofswache von dort. Macht ihr weiter, oder ändert sich etwas?]

#example(title: "Angewandte Regeln")[
  *Duellmechanik.* Jede Seite würfelte gegen ihre eigene Schwierigkeit. Mehr Erfolge gewinnen die Runde. Bei Gleichstand gewinnt niemand Boden, die Zeit vergeht (die Wache nähert sich) und beide Seiten wählen, ob sie weitermachen oder aufgeben wollen.
]

= Szene 4: Das gemeinschaftliche Heben

#line(length: 100%, stroke: 0.5pt)

#gm[Die gestohlene Süßholzwurzel wurde in einem Steinkeller unter dem alten Klostergarten versteckt. Der Eingang wird von einem massiven Stein versperrt, der glitschig von Moos und Alter ist. Keiner von euch könnte ihn allein heben — er wiegt so viel wie ein Mann. Das ist eine *Gruppenaufgabe*. Wer schiebt?]

#player("Anna")[Ich bin dabei. Ich bin stark von Jahren des Säcke-Schleppens und Kälberwrestlings. +1.]

#player("Friedrich")[Ich finde etwas als Hebel — da liegt ein umgestürzter Ast. Das ist ein Werkzeug, +1.]

#player("Margarethe")[Ich habe keine relevante Kraft oder Werkzeuge... aber ich schiebe trotzdem mit. Jede Hilfe zählt, oder?]

#gm[Richtig — du trägst trotzdem deinen Basiswürfel bei, auch ohne eine bestimmte Fähigkeit. Das sind 3 Basiswürfel von drei Charakteren, plus Annas Feldarbeitskraft, plus Friedrichs Hebel = insgesamt 5W6. Der Stein ist riesig und gut eingesetzt — Schwierigkeit *5*. Würfelt gemeinsam!]

#player("Anna")[5W6: 3, 5, 2, 6, 1. Die 5 und die 6 erfüllen beide Schwierigkeit 5!]

#gm[Mit einem knirschenden, ächzenden Protest verschiebt sich der Steinblock. Friedrichs Ast biegt sich gefährlich, aber hält. Annas Muskeln spannen sich an. Sogar Margarethes kleine Schultern drücken gegen den Stein. Er kippt, gleitet, und kracht mit einer Staubwolke beiseite. Darunter: grob gehauene Stufen, die in kühle Dunkelheit hinabführen, und der süße, unverwechselbare Duft von Süßholzwurzel, der aufsteigt.]

#example(title: "Angewandte Regeln")[
  *Gruppenaufgabe.* Alle Teilnehmer tragen zu einem gemeinsamen Pool bei. Margarethe hatte keine relevante Fähigkeit, fügte aber trotzdem ihren Basis-1W6 hinzu. Die Gruppe würfelte gemeinsam — 5W6 gegen Schwierigkeit 5 — und hatte Erfolg mit zwei Würfeln, die das Ziel erfüllten.
]

= Szene 5: Der hilfreiche Zeuge

#line(length: 100%, stroke: 0.5pt)

#gm[Friedrich, du versuchst, den Nachtwächter am Malefizhaus zu überreden, euch den Gefangenen besuchen zu lassen. Es ist spät, die Fackeln zittern im Wind und der Wächter sieht misstrauisch aus. Das ist deine Überzeugungsaufgabe — Schwierigkeit *4*. Du hast +1 von deiner gebildeten Sprache. Anna, Margarethe — wollt ihr helfen?]

#player("Anna")[Ja! Ich unterstütze seine Geschichte. Ich sage, der Gefangene ist mein Onkel und ich bringe ihm Suppe.]

#player("Margarethe")[Ich stelle mich dahinter, sehe tränenreich und mitfühlend aus — vielleicht erweicht das des Wächters Herz.]

#gm[Gut. Lasst uns verschiedene Farben für die Würfel nehmen. Friedrich — nimm die weißen Würfel für deine 2W6. Anna — nimm einen blauen Würfel für deine Hilfe. Margarethe — nimm einen roten Würfel für deine. Denkt daran: Hilfewürfel sind riskant. Würfelt sie separat, damit wir sehen können, welcher wem gehört.]

#player("Friedrich")[Weiße Würfel: 4 und 5.]

#player("Anna")[Blauer Würfel: 3.]

#player("Margarethe")[Roter Würfel: 1.]

#gm[Stopp. Wir prüfen zuerst die Hilfewürfel. Margarethes roter Würfel zeigt *1* — das ist eine Katastrophe. Die gesamte Aufgabe scheitert automatisch, egal was Friedrich gewürfelt hat. Margarethe, was geht schief?]

#player("Margarethe")[Ich versuche tränenreich auszusehen, aber ich übertreibe es — ich fange wirklich an zu weinen und platze heraus: „Bitte, ihr müsst uns zu ihm lassen, er ist unschuldig!" Die Augen des Wächters verengen sich: „Unschuldig? Das entscheidet das Gericht. Und niemand besucht ihn ohne das Siegel des Bischofs. Geht weg — alle — bevor ich eure Namen auf die Liste setze."]

#gm[Das eiserne Tor schlägt zu. Die Fackel flackert. Ihr braucht einen anderen Weg zu dem Gefangenen.]

#example(title: "Angewandte Regeln")[
  *Hilfemechanik.* Der SL hat die Spielenden angewiesen, vor dem Würfeln verschiedenfarbige Würfel zu benutzen. Jeder Helfer trägt genau 1 Würfel bei. Hilfewürfel werden zuerst geprüft: Margarethes Würfel zeigte 1, was bedeutet, die gesamte Aufgabe scheitert automatisch unabhängig von Friedrichs erfolgreichen Würfen. Der Helfer erzählt die Katastrophe.
]

= Szene 6: Der Brand und die Flucht

#line(length: 100%, stroke: 0.5pt)

#gm[Der Domplatz um Mitternacht. Ein Scheiterhaufen wird für den morgigen Morgen errichtet — ihr seht die Reisigbündel hoch gestapelt, der Pfahl ragt wie ein dunkler Finger gegen die Sterne. Der unschuldige Gärtner ist in einer Zelle unter der Bischofsresidenz eingesperrt. Ihr habt Stunden, keine Tage. Friedrich, die Zellentür hat ein gewaltiges Eisenschloss. Was hast du?]

#player("Friedrich")[Ich habe die Dietriche, die ich vor zwei Spielsitzungen dem Dieb abgenommen habe. Das ist ein Werkzeug — +1.]

#gm[Gut. Aber ohne Ausbildung oder Erfahrung wäre das Schlossknacken normalerweise unmöglich. Hast du einen Hintergrund?]

#player("Friedrich")[Ja! Ein Schlosser, der alte Meister Wendel, hat mir einmal gezeigt, wie Dietriche funktionieren, als ich neugierig auf sein Handwerk war. Ich habe ihn drei Schlösser öffnen gesehen und er hat mich eines versuchen lassen. Das ist ein etablierter Hintergrund — ich habe ihn letzte Sitzung aufgeschrieben.]

#gm[Das gibt dir +1 Hintergrund. Dietriche +1 Werkzeug. Das sind insgesamt 3W6. Das Schloss ist erstklassige Handwerksarbeit — Schwierigkeit *5*. Knappe Chancen...]

#player("Friedrich")[Warte — kann ich meinen Inspirationswürfel verwenden? Den habe ich letzte Sitzung für die Gerichtsszene verdient.]

#gm[Du darfst! Das ist noch +1 — insgesamt 4W6. Der Inspirationswürfel wird nach diesem Wurf verbraucht, unabhängig vom Ergebnis. Du spürst das Gewicht des Moments — dafür hat dieser Würfel gewartet.]

#player("Friedrich")[4W6: 2, 5, 1, 4. Die 5 trifft!]

#gm[_Klick._ Das Schloss gibt unter deinen vorsichtigen Händen nach. Friedrich — beschreibe den Moment.]

#player("Friedrich")[Meine Hände zittern, aber ich schließe die Augen und höre Wendels Stimme: „Fühle die Stifte, Junge. Sanft. Geduldig." Ich atme langsam aus... und da ist es. Der letzte Stift fällt mit einem leisen, befriedigenden _Klick_ an seinen Platz. Die Tür schwingt nach innen. Der Gärtner blickt aus dem Stroh auf, die Augen weit vor Ungläubigkeit.]

#gm[Dein Inspirationswürfel ist verbraucht — verausgabt in diesem perfekten Moment der Konzentration. Aber die Zelle ist offen.]

#example(title: "Angewandte Regeln")[
  *Werkzeuge* (+1 für Dietriche) und *etablierter Hintergrund* (+1 für Schlosserschulung) und *Inspirationswürfel* (+1, nach Verwendung verbraucht). Insgesamt 4W6. Der Inspirationswürfel repräsentiert einen Moment außergewöhnlicher Konzentration oder Klarheit, erworben durch vorheriges herausragendes Rollenspiel.
]

= Szene 7: Dachübung

#line(length: 100%, stroke: 0.5pt)

#gm[Es ist der nächste Morgen. Blasses Sonnenlicht fällt durch den Gartennebel. Anna, der Samenhändler ist wieder außer sich — jemand hat seine Saatbeete über Nacht zertrampelt und die jungen Triebe zerstört. Er fleht dich an, den Schuldigen zu finden. Du siehst frische Fußabdrücke im weichen Boden zwischen den Reihen.]

#player("Anna")[Dasselbe wie gestern — ich folge den Spuren. Bauernmädchen, erinnerst du dich? Und jetzt habe ich noch Übung vom gestrigen Erfolg.]

#gm[Lass uns zählen: +1 Bauerntum-Hintergrund, +1 Übung vom gestrigen Erfolg. Das sind insgesamt 3W6. Die Abdrücke sind deutlich im weichen Boden — ich würde normalerweise Schwierigkeit 3 festsetzen. Aber weißt du was? Mit 3W6 gegen Schwierigkeit 3 ist Erfolg fast sicher. Ich entscheide, dass das *automatisch gelingt*. Du musst nicht würfeln — deine Fähigkeit ist über die Herausforderung hinausgewachsen. Anna, beschreibe, wie du mühelos den Boden liest.]

#player("Anna")[Ich unterbreche kaum meinen Schritt. Die Abdrücke erzählen mir alles — schwere Stiefel, eine Schleifspur links (jemand trägt etwas), tiefere Abdrücke neben dem Kohlbeet (sie haben angehalten, um etwas herauszuziehen). Die Spur führt direkt zum Komposthaufen hinter der alten Mauer. Ich zeige schweigend und gehe los.]

#gm[Kein Zögern, keine Unsicherheit. Der Boden spricht zu dir jetzt wie eine vertraute Sprache.]

#example(title: "Angewandte Regeln")[
  *Übungsbonus:* Anna hatte gestern Erfolg beim Spurenlesen, also bekommt sie heute +1 durch Übung. Zusammen mit ihrem Bauerntum-Hintergrund hat sie 3W6. Der SL hat geurteilt, dass 3W6 gegen Schwierigkeit 3 Misserfolg vernachlässigbar macht und *automatischen Erfolg* erklärt — kein Wurf nötig.
]

= Szene 8: Der Schwindler

#line(length: 100%, stroke: 0.5pt)

#gm[Ihr habt Förners Assistenten in der Domsakristei in die Enge getrieben. Er ist gegen den Gewandschrank gedrückt, schwitzt, seine Augen huschen zur Tür. Er weiß, wo die Beweise versteckt sind. Margarethe — willst du ihn zum Reden bringen?]

#player("Margarethe")[Ich packe ihn am Kragen und zische: „Sag mir, wo das Buch ist, oder ich erzähle Förner, dass du Messwein gestohlen hast!"]

#gm[Das ist kühn. Aber lass mich überlegen: ist das _möglich_? Er hat mehr Angst vor Förner als vor dir. Eine Drohung ohne echte Beweise dahinter... das wird ihn nicht knacken. Du brauchst echten Druck — etwas Reales. Ohne das ist das in der Kategorie „möglich, aber etwas fehlt". Hast du etwas Konkretes?]

#player("Margarethe")[Den Messwein! Ich habe ihn tatsächlich _gesehen_, wie er letzten Dienstag eine Flasche weggeschmuggelt hat — ich habe ihn hinter dem Pfeiler beobachtet!]

#gm[Jetzt hast du echte Beweise — das ist eine legitime Hintergrundfähigkeit: „Ich habe seinen Diebstahl bezeugt." Das macht es möglich. Aber da ist noch mehr. Warum liegt Margarethe _so viel_ daran? Warum ist sie so verzweifelt?]

#player("Margarethe")[Meine Mutter wurde der Hexerei beschuldigt, als ich zehn war. Sie floh in der Nacht — ich habe sie nie wiedergesehen. Jedes Mal, wenn ich sehe, wie jemand zum Malefizhaus geschleppt wird, sehe ich das Gesicht meiner Mutter. Ich werde _nicht_ zulassen, dass ein weiterer Unschuldiger brennt.]

#gm[Das ist tiefe, echte Motivation, verwurzelt in der Hintergrundgeschichte. +1 für echte Beweise, +1 für Motivation. Schwierigkeit *5* — dieser Mann hat schreckliche Angst vor Förner, und Förner ist viel gefährlicher als du. Du würfelst 3W6.]

#player("Margarethe")[6, 4, 5. Die 6 und 5 schlagen beide 5!]

#gm[Sein Gesicht wird kreidebleich. Seine Knie geben leicht nach. „Die Krypta", flüstert er, kaum hörbar. „Hinter dem dritten Pfeiler links. Da ist ein loser Stein — das Buch ist in Wachstuch gewickelt dahinter. Aber ihr habt es nicht von mir gehört. _Bitte_ — ihr habt es nicht von mir gehört."]

#example(title: "Angewandte Regeln")[
  *„Möglich, aber etwas fehlt"-Entscheidung:* Der SL verlangte mindestens eine begründete Fähigkeit, bevor er den Wurf erlaubte. *Motivation* (+1): tiefe persönliche Einsätze aus der Charakterhintergrundgeschichte. Der SL hat die Schwierigkeit anhand der Situation bestimmt (die Angst des Ziels vor Förner), nicht Margarethes Fähigkeiten.
]

= Szene 9: Die Erzählung des Scheiterns

#line(length: 100%, stroke: 0.5pt)

#gm[Friedrich, die Klostermauer versperrt deinen Weg zum hinteren Garten. Alter Stein, grob gehauen, aber der jüngste Regen hat ihn glitschig vom Moos gemacht. Schwierigkeit *4*. Kein Kletterhintergrund, keine Werkzeuge — nur dein Basis-1W6. Versuchst du es?]

#player("Friedrich")[Ich muss. Es gibt keinen anderen Weg drum herum. 1W6... auf geht's.]

#gm[Würfle!]

#player("Friedrich")[Eine 2. Natürlich.]

#gm[Misserfolg. Friedrich — die Fiktion gehört dir. Wie besiegt dich die Mauer?]

#player("Friedrich")[Ich finde einen Riss zwischen zwei Steinen, ziehe mich hoch — für einen Moment klettere ich wirklich, die Arme zittern vor Anstrengung. Dann findet mein Stiefel das Moos. Es ist wie auf Eis zu treten. Mein Fuß schießt zur Seite, meine Finger verlieren den Halt und ich rutsche in einem Schauer von Kies und grünem Schleim zurück. Ich lande sitzend, die Handflächen roh und schmerzend, und schaue die Mauer an, die mich gerade besiegt hat.]

#gm[Deine Hände schmerzen, dein Stolz schmerzt mehr. Die Mauer steht unerobert. Aber du bemerkst etwas — auf der anderen Seite wächst eine Weinrebe, die dein Gewicht tragen könnte. Ein zweiter Versuch wäre andere Umstände...]

#example(title: "Angewandte Regeln")[
  *Spieler erzählt das Ergebnis.* Nachdem der SL mechanisch Erfolg oder Misserfolg bestimmt hat, beschreibt der Spieler _wie_ es in der Fiktion passiert. Der SL kann Kontext oder Konsequenzen hinzufügen (die Rebe bietet einen neuen Ansatz), aber die Kernerzählung von Friedrichs Erfahrung gehört dem Spieler.
]

= Szene 10: Das Gärtnersduell

#line(length: 100%, stroke: 0.5pt)

#gm[Der Komposthaufen verbirgt einen Tunneleingang — ihr duckt euch hinein und findet einen niedrigen, erdigen Durchgang, der nach Fäulnis und dunklem Boden riecht. Am anderen Ende eine Gestalt: der alte _Kaspar_, der pensionierte Gärtner. Er hat das gestohlene Süßholzwurzelbündel unter dem Arm und ist auf dem Weg zu einem Hinterausgang. Anna, du versperrst ihm den Weg. Er sieht dich und senkt die Schulter, um sich durchzudrücken. Das ist ein *Duell*.]

#player("Anna")[Ich pflanze meine Füße und stemme mich. Ich bin stark von der Feldarbeit — das ist +1. Und ich bin in Raufereien mit dem Vieh gewesen — etablierter Hintergrund aus der Viehhaltungsszene letzte Woche — +1.]

#gm[Kaspar ist alt aber sehnig — ein Leben lang graben gibt ihm überraschende Stärke. +1 für ihn. Der Tunnel ist eng — Schwierigkeit *3* für beide. Würfelt!]

#player("Anna")[3W6: 4, 3, 1. Zwei Erfolge — die 4 und 3 erfüllen beide Schwierigkeit 3.]

#gm[Kaspar würfelt 2W6: 5 und 2. Ein Erfolg. Anna gewinnt die erste Runde! Sie hält stand — Kaspar prallt von ihr ab wie gegen eine Wand. Wie beschreibst du es?]

#player("Anna")[Ich fange seine anstürmende Schulter mit beiden Händen, grabe meine Fersen in die festgestampfte Erde und stoße ihn taumelnd zurück. „Nicht heute, Kaspar!"]

#gm[Er torkelt zurück, fällt aber nicht. Seine Augen huschen zur Wand — da hängt eine Mistgabel an einem Nagel. Er schnappt sie sich. Das ist ein *Werkzeug* — +1 für ihn in der nächsten Runde. Anna, an der Tunnelwand lehnt ein hölzerner Rechen...]

#player("Anna")[Ich greife ihn! +1 Werkzeug für mich auch!]

#gm[Jetzt seid ihr beide mit Gartengeräten in einem engen Tunnel bewaffnet. Schwierigkeit bleibt bei 3. Anna hat 4W6, Kaspar hat 3W6. Neue Runde — würfelt!]

#player("Anna")[4W6: 6, 3, 5, 2. Drei Erfolge!]

#gm[Kaspar: 3W6: 1, 3, 4. Zwei Erfolge. Anna gewinnt wieder! Sie hakt die Gabel mit ihrem Rechen und reißt sie aus seiner Hand — sie scheppert gegen die Tunnelwand. Kaspar, entwaffnet und überwältigt, lässt das Süßholzwurzelbündel fallen und hebt zitternde Hände.]

#player("Anna")["Das gehört nicht dir, Alter." Ich hebe das Bündel auf und gehe rückwärts zum Ausgang, ein Auge auf ihn gerichtet.]

#gm[Er sinkt an der Wand herunter, schwer atmend. „Es _sollte_ mir gehören", murmelt er. „Vor vierzig Jahren habe ich die erste Süßwurzel in diesem Garten gepflanzt..." Aber er versucht nicht mehr zu kämpfen. Ihr habt die Süßholzwurzel.]

#example(title: "Angewandte Regeln")[
  *Ausgedehntes Duell* über mehrere Runden. Zwischen den Runden haben beide Seiten Werkzeuge aufgenommen (+1 jeweils), was ihre Würfelpools vergrößerte. Der SL hat die Schwierigkeit konstant gehalten, da sich das Gelände nicht geändert hat. Annas überlegene Fähigkeitszahl (4W6 gegen 3W6) gab ihr einen konsistenten Vorteil. Der Gewinner jeder Runde erzählt seinen Triumph.
]

= Regelabdeckung

#table(
  columns: (1fr, auto),
  [*Regel*], [*Szene(n)*],
  [Grundlegende Aufgabenlösung (Schwierigkeit + Fähigkeiten)], [1, 2],
  [Verborgene Schwierigkeit], [1, 2],
  [Fähigkeiten aus dem Hintergrund], [1, 3, 5, 6],
  [Erinnerung/Wissen (Falschinformation)], [2],
  [Duellmechanik], [3, 10],
  [Gleichstand im Duell / Zeit vergeht], [3],
  [Gruppenaufgaben (kombinierte Pools)], [4],
  [Helfen (Risiko bei 1 und 2)], [5],
  [Verschiedenfarbige Hilfewürfel], [5],
  [Inspirationswürfel], [6],
  [Fähigkeiten aus Werkzeugen/Gegenständen], [6, 10],
  [Übung / Wiederholungsbonus], [7],
  [Automatischer Erfolg], [7],
  [Unmöglich/möglich-aber-fehlend-Entscheidungen], [8],
  [Motivation als Fähigkeit], [8],
  [Spieler erzählt das Ergebnis], [9],
  [SL passt Schwierigkeit mitten im Duell an], [10],
  [Alle 6en / Alle 1en], [SL-Buchbeispiele],
  [Spektakuläre/katastrophale Ergebnisse], [SL-Buchbeispiele],
)
