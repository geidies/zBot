package Jokes;
require Exporter;
use strict;
use warnings;
our @ISA    = qw(Exporter);

use utf8;

use lib "/home/zimon/hp/jabberbot/zbot/modules";
use Plugins;

# place jokes here
my @jokes = ("Chuck Norris kann Feuerr mit einer Lupe machen ... Nachts!",
"Treffen sich zwei Geraden. Sagt die eine: \"Beim nächsten Mal gibst du einen aus.\"",
"Hotline: Was für einen Computer haben Sie? \n   Kundin: Einen weissen.",
"Was macht ein Mathematiker im Garten? \n Wurzeln ziehen.",
"Obi Wan Kenobi und Yoda sitzen am Küchentisch \nda sagt Yoda plötzlich:\"Dunkel die andere Seite ist\" \nObi Wan: \"Halt die Klappe und iss dein Toast\"",
"Elefant zum Kamel: \"Warum hast du denn deinen Busen auf dem Rücken?\" \n Darauf das Kamel: \"Eine gewagte Frage für jemanden der seinen Schwanz im Gesicht trägt\"",
"Was ist gelb und kann nicht schwimmen? Ein Baukran",
"Chuck Norris liest keine Bücher: Er starrt sie so lange an bis sie ihm freiwillig sagen was er wissen will.",
"Es GIBT feindlich Aliens! Sie warten nur bis Chuck Norris tot ist damit sie angreifen können.",
"Einmal hat Chuck Norris einen *Big Mac* bei Burger King bestellt ... und ihn bekommen.",
"Chuck Norris hat bis zur Unendlichkeit gezählt ... 2 mal.",
"Chuck Norris ist vor 10 Jahren gestorben. Der TOD hatte bis jetzt nur noch nicht den Mut es ihm zu sagen.",
"Mir fällt grad kein Witz ein",
"Chuck Norris hat einmal eine ganze Flasche Chloroform inhaliert. Er musste 3 mal zwinkern.",
"Wenn Chuck Norris ins Wasser fällt wird er nicht nass ... aber das Wasser wird Chuck Norris.",
"Chuck Norris hat einmal Russisches Roulette mit einem komplett geladenen Colt gespielt ... und gewonnen!",
"Einige Leute tragen Superman-Schlafanzüge. Superman trägt Chuck-Norris-Schlafanüge.",
"Chuck Norris kann eine Schwingtür zuschlagen.",
"Chuck Norris kann eine Partie Vier Gewinnt in drei Zügen gewinnen.",
"Chuck Norris kann ein Tennisspiel gegen eine Mauer gewinnen.",
"Chuck Norris kann durch Null teilen!",
"Chuck Norris braucht 22 Sekunden um sich 60 Minuten Film anzuschauen.",
"Chuck Norris ist der einzige Mensch auf der Welt der einen Roundhouse-Kick per e-Mail verschicken kann.",
"Chuck Norris kennt die letzte Ziffer von Pi.",
"Chuck Norris kann einen Blackjack mir nur einer Karte bekommen.",
"Der Arzt zum Patienten: \"Sie sind doch bestimmt Kettenraucher oder?\" Bewahre Herr Doktor ich rauche nur Zigaretten!\"",
"Herr Doktor ich brauche eine Brille! \n Das glaube ich Ihnen gerne! Das hier ist ein Würstchenstand.",
"Bei Gericht in Grönland fragt der Staatsanwalt den Angeklagten: \"Wo waren Sie in der Nacht vom 18. November zum 16. März?\"",
"Anzeige in einer Zeitung: \n \"Lernen Sie schiessen und treffen Sie gute Freunde!\"",
"Allgemeine Verkehrskontrolle \n Polizist zur Autofahrerin: \"Ihr Profil ist aber ganz schön runter.\" Autofahrerin: \"Sie sind auch keine Schönheit!\"",
"Fragt ein Spaziergänger einen Angler: \"Na beissen die Fische?\" \"Nein Sie können sie ruhig streicheln.\"",
"Ich persönlich lege mein Geld in Alkohol an. Wo bekommt man sonst 40%?",
"An einer Mülltonne steht: \n Türken raus. Darunter hat einer geschrieben: \n Nazis rein.",
"Treffen sich zwei Jäger. Beide tot.",
"Eine Polizeistreife kracht gegen einen Baum. Sagt der eine Polizist: \"So schnell waren wir noch nie am Unfallort!\"",
"Kommt ein Mann zum Arzt: \n Ich bekomm mein Stärkungsmittel nicht auf...",
"Fragt der Kollege: \"Führt Deine Freundin öfters Selbstgespräche?\" \n \"Ja aber sie weiss nichts davon. Sie denkt ich höre zu!\"",
"Warum wurde ihnen denn der Führerschein entzogen?\n Ach blöde Sache: Ich habe einen Geisterfahrer überholt!?",
"Chuck Norris kann mit offenen Augen niesen",
"Chuck Norris kann Minutenreis in 30 Sekunden kochen.",
"\"Herr Doktor, mein Mann ist verrückt! Er isst jeden Tag die Kaffeetasse auf und lässt nur den Henkel übrig!\" \n \"Ja, er ist wirklich verrückt! Der Henkel ist doch das Beste!\"",
"Beim Psychater: \"Herr Doktor, ich mag Fussball!\" \n \"Das ist doch ganz normal, ich mag auch Fussball!\" \n \"Paniert und gut durchgebraten?\"",
"Neulich bei der Psychiatrie\nHotline: Ring\nRing\nRing ... Klick! \"Hallo bei der Psychiatrie\nHotline. Wenn Sie sich bedroht fühlen, so drücken Sie die 1! Aber schnell! Wenn Sie kein Selbstvertrauen haben, dann bitten Sie jemand anderes, die 2 zu drücken! Falls Sie eine gespaltene Persönlichkeit haben, dann drücken Sie die 3, die 4, die 5 und die 6! Wenn Sie unter Verfolgungswahn leiden, dann wissen wir, wer sie sind und was Sie wollen. Bleiben Sie so lange in der Leitung, bis wir den Anruf zurückverfolgt haben! Wenn Sie schizophren sind, dann hören Sie auf die Stimmen. Sie sagen Ihnen, welche Nummer Sie drücken müssen! Falls Sie manisch\ndepressiv sind spielt es keine Rolle, welche Nummer Sie drücken: Niemand hört Ihnen zu...\"",
"\"Wie stehen die Chancen, Herr Doktor?\" \n \"Ich führe die Operation zum 38. Mal aus!\" \n \"Da bin ich ja beruhigt.\" \n \"Ja, einmal muss es ja mal gelingen!\"",
"\"Herr Doktor, alle behaupten, ich sei eine Uhr!\" \n \"Ach wo, die wollen Sie doch nur aufziehen!\"",
"\"Herr Ober, was machen denn all die Leute an meinem Tisch?\" \n \"Na, Sie hatten doch einen Auflauf bestellt!\"",
"\"Herr Ober, in meiner Suppe schwimmt ein Hörgerät!\" \n \"Hääääää?\"",
"\"Herr Ober, warum steht auf der Speisekarte Speinat?\" \n \"Der Koch hat zu mir gesagt, ich soll Spinat mit Ei schreiben!\"",
"\"Herr Ober, da schwimmt eine Wespe in meiner Suppe!\" \n \"Tut mir leid mein Herr, die Fliegen sind uns ausgegangen.\"",
"Die Schwester kommt aufgeregt zum Arzt: \"Der Simulant in Zimmer 23 ist gerade gestorben.\" Der Arzt: \"Donnerwetter, jetzt übertreibt er aber!\"",
"Gast: \"Herr Ober, jetzt habe ich schon fünfmal ein Schnitzel bestellt, und es ist immer noch nicht da!\" Ober: \"Ja, Massenbestellungen brauchen immer etwas länger...\"",
"Im französischen Feinschmeckerrestaurant: \"Unsere Schnecken sind weltbekannt!\" \"Das hab ich schon bemerkt \n bin vorhin von einer bedient worden...\"",
"Ein Deutschlehrer ist im Restaurant. Er macht den Ober auf einen Schreibfehler aufmerksam und zeigt auf die fehlerhafte Stelle. \"Herr Ober, Omelett mit zwei t!\" Darauf der Ober in Richtung Küche: \"Karl, ein Omelett mit zwei Tee...\"",
"Was sagt ein Anwalt ohne Arbeit zu einem Anwalt mit Arbeit? \"Zwei Currywürste mit Pommes, bitte!\"",
"\"Sie wurden schon mehrfach wegen des Verkaufs von angeblichen Verjüngungsmitteln verurteilt! 1989, 1971, 1923, 1887, 1797...\"",
"Richter: \"Habe ich Ihnen nicht gesagt, Sie sollen versuchen, ein anderer Mensch zu werden?\" \n \"Ich hab\"s versucht. Ich wurde wegen Urkundenfälschung und Amtsanmassung verurteilt!\"",
"Was ist der arbeitsreichste Tag in der Woche für einen Beamten? Montag, da muss er immer gleich drei Kalenderblätter abreissen!",
"Welche Beamten stören im Büro am meisten? Jene, die im Schlaf reden.",
"Treffen sich zwei Beamte auf dem Gang. Sagt der eine zum anderen: \"Kannst du auch nicht schlafen?\"",
"Richter zum Zeugen: \"Wie weit waren Sie von der Unfallstelle entfernt?\" \n \"18,72 Meter.\" \n \"Wieso können Sie das so exakt angeben?\" \n \"Ich habe sofort nachgemessen, weil ich dachte, irgend so ein Idiot wird mich sicher danach fragen!\"",
"Ein Mann steht vor dem Richter, weil er einen Lastwagen voll Schnaps gestohlen hat.\nRichter: \"Angeklagter, was haben sie mit der Ladung Schnaps gemacht?\"\nAngeklagter: \"Die habe ich verkauft!\"\nRichter: \"Angeklagter, und was haben sie mit dem Geld gemacht?\"\nAngeklagter: \"das habe ich versoffen!\"",
"\"Warum sind sie denn dreimal hintereinander in dasselbe Geschäft eingebrochen?\" \n \"Das war so, Herr Richter: Das erstemal habe ich ein Kleid für meine Frau mitgenommen, die beiden anderen Male musste ich es umtauschen!\"",
"Richter zum Angeklagten: \"Warum sind Sie ausgerechnet in ein Seifengeschäft eingebrochen?\" \n \"Weil es mir damals echt dreckig ging...!\"",
"Fragt der Gast den Kellner: \"Wissen sie was ein Schimmel ist?\",Kellner: \"Ja das ist ein weisses Pferd\" \n \"Was hat dann ein Pferd auf meinem Pudding zu suchen?\" fragt der Gast.",
"\"Herr Ober, hier auf der Karte steht: Kaviar, was ist das denn?\" \n \"Das sind Fischeier, mein Herr!\" \n \"Gut, dann hauen Sie mir zwei in die Pfanne!\"",
"Der Tourist fragt den Kellner: \"Sagen Sie mal, regnet es hier eigentlich viel?\" \n \"Keine Ahnung, an diesem Tisch bedient sonst mein Kollege...!\"",
"Zwei Freunde im Lokal. Bestellt der Erste: \"Bringen sie mir einmal Forelle.\" Sagt der Zweite: \"Mir auch bitte. Aber frisch!\" Schreit der Ober in Richtung Küche: \"Zweimal Forelle. Eine davon frisch!\"",
"\"Mein Gott, Sie haben ja eine Armbanduhr verschluckt\", ruft der Röntgen Arzt entsetzt. \"Deswegen bin ich ja hier. Können sie mir sagen, wie spät es ist?\"",
"Ich hatte heut' ein 7-Gänge Menü: Ne' Bratwurst und 'n Sixpack Bier!",
"Unterhalten sich zwei Männer. \n Sagt der eine: \"Stell dir vor, ich hab mir gestern einen Jaguar gekauft.\" \n Sagt der andere: \"Ist er nicht ein bisschen gefährlich?\"",
"\"Mein Vater ist ein richtiger Angsthase!\" - \"Warum denn das?\" - \"Immer wenn Mami nicht da ist, schläft er bei der Nachbarin!\"",
"Auf einer Wetterstation musste die tägliche Niederschlagshöhe von Hand in den Computer eingegeben werden. \nIrgendwann einmal vertippte sich dabei einer, statt 8,54 cm gab er 8,54 m ein. \nDie Programmierer hatten aber wohl für diesen Fall vorgesorgt, denn der Computer gab folgende Fehlermeldung aus: \n \"Baue ein Boot! Nimm von jeder Tierart zwei, ein männliches und ein weibliches...\"",
"Treffen sich ein Hase und eine Giraffe.\n  Meint die Giraffe \"Oh, Häschen, hättest du nur einen langen Hals. Das ist so toll, das Wasser das so lecker schmeckt, es gleitet so langsam meinen Hals hinunter und ich kann das solange geniessen, oder die saftigen grünen Blätter... hmmm... jedes einzelne Blatt ist ein wahrer Genuss!\" \n Darauf das Häschen ohne Regung: \"Schon mal gekotzt?\"",
"Kurz vor Anpfiff des Pokalendspiels kommt noch ein Sportsfreund, ziemlich ausser Atem, an das Kartenhäuschen. \n \"Zu spät\", sagt die Kassiererin. \"Das Stadion ist ausverkauft - bis auf den letzten Platz.\" \n\"Schön\", nickt er zustimmend, \"dann geben Sie mir den!\"",
"Erstes Date im Restaurant. Der Mann: \"Sie sind sehr schön.\"\nDie Frau sagt: \"Schade, dass ich das nicht von Ihnen behaupten kann.\"\nAntwortet der Mann: \"Sie hätten auch ein bisschen lügen können, so wie ich.\"",
"Der junge Mann will am Bankschalter Geld abheben. Hinter ihm betritt ein Polizist die Bank und fragt ihn:\" Ist da Ihr Wagen, der da draußen mit laufendem Motor im Halteverbot steht?\"\n\"Ja, wieso?\"\n\"Dann heben Sie gleich 25,00 Euro mehr ab!\"",
"Der Chirurg zum Patienten: \"Sie fragen mich, was ist, wenn die Operation schief geht? Da machen Sie sich mal keine Sorgen - das merken Sie gar nicht.\"",
"Was ist der Unterschied zwischen einem Anwalt und einem Vampir?\nDer Vampir saugt nur nachts Blut.",
"Ein Mann geht völlig verkrümmt über den Platz. Da klopft ihm jemand mitleidig auf die Schulter: \"Sind Sie krank, oder warum gehen Sie so schief?\"\n\"Nein, aber ich habe vorhin nach dem Rathaus gefragt und da hat man mir gesagt, ich soll schräg über den Platz gehen!\"",
"Als ich noch jünger war, hasste ich es, auf Hochzeiten zu gehen.\nMeine beiden Großmütter und alle möglichen Tanten drängten sich immer um mich, piekten mich in die Seite und kicherten: \"Du bist der Nächste! Du bist der Nächste!\"\nSie haben erst mit dem ganzen Mist aufgehört, als ich anfing, bei Beerdigungen das selbe zu machen!",
"Der engagierte Junglehrer im Sozialunterricht: \"Wusstet ihr eigentlich schon, dass bei jedem Atemzug den ich mache, ein Mensch stirbt?\"\nDa ruft ein Schüler: \"Haben sie es schon mal mit Mundwasser versucht?\"",
"Kommt ein Mann im weißen Kittel ins Krankenzimmer und fragt den Patienten: \"Wie groß sind sie denn?\"\nPatient: \"1 Meter 80, Herr Doktor.\"\nMann: \"Ich bin nicht der Doktor, ich bin der Schreiner.\"",
"Soldat Müller, kommen sie mal aus dem Auto und schaun sie sich an, wie sie da drin sitzen!!",
"Doktor zum Patienten: \"Sie sind sterbenskrank, und Ihnen verbleibt nicht mehr viel Zeit!\"\nPatient: \"Wieviel habe ich denn noch?\"\nDoktor: \"Zehn.\"\nPatient: \"Zehn was? Jahre, Monate, Wochen?\"\nDoktor: \"Neun...\"",
"Bei uns am Finanzamt hängt ein Schild: \"Geöffnet- wir bitten um Verständnis!\"",
"Der alte Jagdherr geht nach beendeter Pirsch ins Wirtshaus und trifft dort den Dorfdoktor. \"Wissen Sie schon, was ich heute erlegt habe?\" ruft er dem zu.\n\"Ja, Ja\", winkt der Arzt ab. \"War schon bei mir in Behandlung.\"",
"Kommt eine schwangere Frau zum Bäcker sagt:\"ich bekomme ein Brötchen\" darauf der Bäcker:\"Tja, Sachen gibts\"",
"Ein Mann beim Psychiater: \"Herr Doktor, Herr Doktor! Ich glaube, ich bin ein Auto. Brumm, brumm, brumm.\"\nDer Arzt: \"Machen Sie das noch mal.\"\n\"Brumm, brumm, brumm.\"\n\"Ich glaube, Ihr Vergaser ist verstopft!\"",
"Eine Frau beim Psychiater: \"Mein Mann ist verrückt, jeden Morgen ist er zum Frühstück eine Tasse und lässt nur den Henkel über.\"\nDarauf der Psychiater: \"Ihr Mann ist wirklich verrückt, der Henkel ist doch das Beste!\"",
"Professor zum Studenten: \"Mit dem, was sie nicht wissen, können noch zwei andere durchfallen!\"",
"Bei einer Umfrage:\n\"Was halten sie für das größere Problem : Unwissenheit oder Gleichgültigkeit?\"\n\"Weiß ich nicht, ist mir aber auch egal\"",
"Der Lehrling rettet seinen Chef vor dem Ertrinken.\nSagt der Chef: \"Dafür hast Du einen Wunsch frei! Was wünschst Du Dir am meisten?\"\nDa überlegt der Lehrling eine Weile und sagt schließlich: \"Erzählen Sie in der Fabrik niemanden, dass ich es war, der Sie gerettet hat...\"",
"Was muss ein Polizist trinken, wenn er 0,5 Promille erreichen will?\nDrei Tage lang nichts...",
"Lehrer: \"Aus welchem Land kommst Du?\"\nSchüler: \"Czechoslovakia.\"\nLehrer: \"Buchstabiere das mal fuer uns\"\nSchüler: \"Ich glaube, eigentlich bin ich in Ungarn geboren.\"",
"Früher sind mir die Frauen immer massenhaft nachgelaufen.\"\n\"Und warum heute nicht mehr?\"\n\"Weil ich keine Handtaschen mehr klaue...\"",
"Neurotiker: Einer, der Luftschlösser baut.\nPsychotiker: Einer, der darin wohnt.\nPsychotherapeut: Derjenige, der die Miete kassiert...",
"Wie spielt man Beamten-Mikado?\nWer sich zuerst bewegt, hat verloren.",
"Die Beamten sind die Träger der Nation. Einer träger als der andere.",
"Im Manöver ist eine Brücke gesperrt. Sie trägt ein Schild mit der Aufschrift \"Gesprengt!\". Der General sieht völlig fassungslos wie dennoch eine ganze Kompanie gemütlich über die Brücke schlendert. Der letzte Soldat hat ein Schild auf dem Ruecken. Der General reisst den Feldstecher hoch und liest: \"Wir schwimmen!\"",
"Die jungen Fallschirmspringer sollen zum erstenmal aus dem Flugzeug abspringen.\nDer Spiess führt jeden einzelnen zur Luke und schubst ihn hinaus.\nNur einer wehrt sich mit Händen und Füssen, doch schliesslich kann ihn der Spiess doch in die Tiefe beförden.\nEiner biegt sich vor Lachen. Brüllt der Spiss: \"Über einen solchen Feigling können sie noch lachen?\"\n\"Feigling ist gut! Das war unser Pilot!\"",
"Warum stehen Studenten schon um sieben Uhr auf?\nWeil um acht der Supermarkt zu macht.",
"Beim Philosophieexamen stand unter anderem auch folgendes auf dem Prüfungsbogen: \"Wenn dies eine Frage ist, beantworten Sie sie.\"\nEine der Antworten: \"Wenn dies eine Antwort ist, bewerten Sie sie.\"",
"Im Hörsaal sind zwei Garderobenhaken angebracht worden. Darüber ein Schild: \"Nur für Dozenten!\"\nAm nächsten Tag klebt ein Zettel drunter: \"Aber auch für Mäntel geeignet!\"",
"Der Professor sitzt in der Mensa und isst.\nEin Student setzt sich ungefragt ihm gegenüber.\nEtwas verärgert meint der Professor: \"Also, seit wann essen denn Adler und Schwein an einem Tisch?\"\nDarauf der Student: \"OK, dann flieg ich halt weiter...\"",
"Zwei Studenten unterhalten sich.\nFragt der eine plötzlich: \"Wie spät ist es?\"\n\"Mittwoch\" antwortet der andere.\n\"Keine Details!!\" ruft der erste, \"Sommer- oder Wintersemester?\"",
"\"Kennen wir uns nicht?\", begrüßt der Professor den aufgeregten Studenten bei der mündlichen Prüfung.\n\"Ja, vom letzten Mal. Ich wiederhole heute.\"\n\"Gut. Was war denn das letzte Mal die erste Frage?\", fragt der Professor.\n\"Kennen wir uns nicht?\"",
"Die Kuh eines ostfriesischen Bauern ist krank.\nBesorgt fragt er seinen Nachbar: \"Was hast du denn damals deiner Kuh gegeben als sie so krank war?\"\n\"Ich habe der Kuh damals Salmiak-Geist gegeben\", sagt dieser.\nGesagt, getan. Als der ostfriesische Bauer eine Woche später seinen Nachbarn besucht, trauert er: \"Meine Kuh ist gestorben.\" Darauf dieser: \"Meine damals auch.\"",
"Erzählt ein Bauer seinem Freund: \"Stell' Dir vor, letztens bin ich mit meinem Traktor in eine Radarfalle gefahren.\"\n\"Und, hat's geblitzt?\"\n\"Nein, gescheppert.\"",
"Kommt ein Mann ins Lokal und ruft: \"Herr Wirt, schnell einen Doppelten, ehe der Krach losgeht!\"\nEr kippt den Doppelten hinunter und sagt: \"Noch Einen, ehe der Krach losgeht!\"\nNach dem 5. Glas fragt der Wirt seinen Gast:\"Was für einen Krach meinen Sie eigentlich?\"\n\"Ich kann nicht bezahlen...\"",
"Ein Urlauber will nach Bangkok.\nDas Fräulein im Reisebüro fragt Ihn: \"Möchten Sie Über Athen oder Bukarest fliegen?\"\nUrlauber: \"Nur über Ostern.\"",
"\"Soll ich Ihnen das Mittagessen in die Kabine bringen?\", fragt der Ober den seekranken Passagier.\n\"Oder sollen wir es gleich für Sie über Bord werfen?\"",
"Der Urlauber in einem kleinen Hotel: \"Bitte, ich möchte zwei Eier, eines steinhart, das andere roh, einen verkohlten Toast und eine lauwarme Brühe, die wohl Kaffee heißt.\"\n\"Ich weiß nicht, ob sich das machen lässt,\" gibt der Kellner zu bedenken.\n\"Aber wieso denn das? Gestern ging es doch auch!\"",
"Ein Reisender zum Portier: \"Haben Sie noch ein Zimmer frei?\"\nPortier: \"Leider nein.\"\nReisender: \"Hätten Sie ein Zimmer für die Bundeskanzlerin, wenn sie käme?\"\nPortier: \"Aber klar, jederzeit!\"\nReisender: \"Dann geben Sie mir bitte ihr Zimmer. Sie kommt heute nicht!\"",
"Ein Tourist in Schottland besichtigte das Loch Ness in der Hoffnung, dem Ungeheuer Nessie zu begegnen.\nSchließlich fragte er den Fremdenführer: \"Wann taucht das Ungeheuer denn immer auf?\"\nDarauf dieser: \"Gewöhnlich nach fünf Scotch.\"",
"\"Heinz, hast du eigentlich schon Urlaubspläne gemacht?\"\n\"Nein, wozu? Meine Frau bestimmt, wohin wir fahren, mein Chef bestimmt, wann wir fahren, und meine Bank, wie lange wir fahren.\"",
"Ein Abbruchunternehmer macht Urlaub in Rom. Gedankenverloren steht er vor dem Kolosseum.\n\"Na\", unterbricht ihn seine Frau schließlich, \"was hältst Du davon?\"\n\"Ach, ich denke, in zwei Wochen hätte ich es weg.\"",
"Tommi erzählt: \"Stell' dir vor, als ich im Urlaub in Amerika war, hatte ich ein Hotelbett, in dem schon Michael Jackson, Jon Bon Jovi und Madonna geschlafen haben!\"\nDarauf Tina trocken: \"War es nicht ein bißchen eng, so zu viert?\"",
"Kunde: \"Für die Ferien suche ich einen wirklich spannende Krimi.\"\n\"Einen wirklich spannenden Krimi?\" überlegt der Buchhändler, \"Dann nehmen Sie diesen. Da erfahren Sie erst auf der letzten Seite, daß der Butler alle umgebracht hat.\"",
"Zwei Jungen stehen vor dem Standesamt und betrachten interessiert ein Brautpaar.\n\"Hör mal\", sagt der eine, \"wollen wir die mal erschrecken?\"\n\"Ja,\" sagt der andere, läuft auf den Bräutigam zu und ruft: \"Hallo, Papa!\"",
"Richter: \"Ich kenn sie doch! Hab sie schon tausendmal gesehen! Sie sind doch sicher vorbestraft!\"\nAngeklagter: \"Nein. Ich bin Türsteher im Eros-Center...\"",
"Fragt die Wohnungsvermieterin den Bewerber:\n\"Sind Sie verheiratet?\"\n\"Nein.\"\n\"Sind Sie verlobt?\"\n\"Nein.\"\n\"Haben Sie eine feste Freundin?\"\n\"Nein.\"\n\"Musizieren Sie?\"\n\"Nein. Aber eins muss ich Ihnen doch gestehen, wenn ich meine Butterbrote morgens einpacke, knistert das Papier ein wenig.\"",
"Was war Jesus von Beruf? Student! Er wohnte mit 30 Jahren noch bei den Eltern, hatte lange Haare und wenn er etwas tat, dann war es ein Wunder.",
);

sub getJoke {
	my $i = int(rand(@jokes +1) -1);
	return ($jokes[$i]);	
}


Plugins::registerPlugin("witz",\&getJoke,"Erzählt einen Zufälligen Witz","Erzählt einen Witz");
# in english: Tells a random joke