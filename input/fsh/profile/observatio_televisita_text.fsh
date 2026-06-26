Profile: ObservationTelevisitaNarrative
Parent: Observation
Id: ObservationTelevisitaNarrative
Title: "Observation Televisita Narrative"
Description: "Profilo della risorsa Observation utilizzato per rappresentare osservazioni cliniche espresse in forma testuale (narrativa) nel contesto della televisita, come referti di esame obiettivo, descrizioni di sintomi o annotazioni cliniche."
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = true

* . ^short = "Osservazione testuale rilevata durante la televisita."
* . ^definition = "Rappresenta un'osservazione clinica espressa in forma narrativa, non codificabile con un valore strutturato. Utilizzata tipicamente per sezioni descrittive del referto di televisita."

* status ^short = "Stato dell'osservazione narrativa."
* status ^definition = "Stato attuale dell'osservazione. I valori possibili includono: registered, preliminary, final, amended, corrected, cancelled, entered-in-error, unknown."

* category ^short = "Categoria dell'osservazione narrativa."
* category ^definition = "Classifica l'osservazione in una categoria clinica. Nel contesto della televisita può indicare note di esame obiettivo, anamnesi o altri contenuti descrittivi."

* code ^short = "Codice che identifica il tipo di osservazione narrativa."
* code ^definition = "Codice LOINC, SNOMED CT o altro sistema che identifica la tipologia del contenuto narrativo (es. esame obiettivo, anamnesi, note cliniche)."

* subject ^short = "Assistito oggetto dell'osservazione."
* subject ^definition = "Riferimento all'assistito coinvolto nella televisita per il quale è stata prodotta l'osservazione narrativa."

* effective[x] ^short = "Data e ora di rilevazione o produzione dell'osservazione."
* effective[x] ^definition = "Data e ora in cui l'osservazione narrativa è stata prodotta o a cui si riferisce clinicamente."

* performer ^short = "Autore dell'osservazione narrativa."
* performer ^definition = "Riferimento al professionista sanitario che ha redatto o validato il contenuto narrativo dell'osservazione."

* value[x] 1..
* value[x] only string
* value[x] ^short = "Testo libero dell'osservazione clinica."
* value[x] ^definition = "Contenuto testuale dell'osservazione clinica in forma narrativa. Utilizzato per esprimere informazioni cliniche non strutturabili in formato codificato, quali descrizioni di sintomi, esame obiettivo, anamnesi o valutazioni del professionista."

* note ^short = "Note aggiuntive."
* note ^definition = "Annotazioni o commenti aggiuntivi in testo libero che integrano il contenuto principale dell'osservazione narrativa."