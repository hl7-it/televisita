Profile: ObservationTelevisita
Parent: Observation
Id: ObservationTelevisita
Title: "Observation Televisita"
Description: "Profilo della risorsa Observation utilizzato per rappresentare parametri clinici, misurazioni e osservazioni rilevate nel contesto della televisita."
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = true

* . ^short = "Parametro clinico o misurazione rilevata durante la televisita."
* . ^definition = "Rappresenta una misurazione, un parametro vitale o un risultato clinico rilevato o comunicato dall'assistito nel corso della televisita."

* status ^short = "Stato dell'osservazione."
* status ^definition = "Stato attuale dell'osservazione. I valori possibili includono: registered, preliminary, final, amended, corrected, cancelled, entered-in-error, unknown."

* category ^short = "Categoria dell'osservazione."
* category ^definition = "Classifica l'osservazione in una categoria (es. parametri vitali, esame fisico, risultato di laboratorio). Nel contesto della televisita è tipicamente utilizzata per parametri vitali o dati auto-riferiti dall'assistito."

* code ^short = "Codice del parametro osservato."
* code ^definition = "Codice che identifica il tipo di osservazione eseguita (es. pressione arteriosa, frequenza cardiaca, peso corporeo). Preferibilmente espresso con codifica LOINC o SNOMED CT."

* subject ^short = "Assistito oggetto dell'osservazione."
* subject ^definition = "Riferimento all'assistito coinvolto nella televisita per il quale è stata rilevata l'osservazione."

* effective[x] ^short = "Data e ora di rilevazione del parametro."
* effective[x] ^definition = "Data e ora in cui l'osservazione è stata effettuata o a cui si riferisce clinicamente."

* performer ^short = "Responsabile dell'osservazione."
* performer ^definition = "Riferimento al professionista sanitario, all'assistito stesso o al dispositivo che ha effettuato la misurazione. Nel contesto della televisita può trattarsi di un dispositivo medico utilizzato a domicilio dall'assistito."

* value[x] ^short = "Valore misurato o rilevato."
* value[x] ^definition = "Risultato dell'osservazione espresso come quantità, codice, stringa o altro tipo. Nel contesto della televisita rappresenta il valore del parametro clinico riportato."

* dataAbsentReason ^short = "Motivo dell'assenza del valore."
* dataAbsentReason ^definition = "Indica il motivo per cui il valore dell'osservazione non è disponibile (es. non rilevato, sconosciuto, errore di strumentazione)."

* interpretation ^short = "Interpretazione clinica del valore."
* interpretation ^definition = "Codice che esprime l'interpretazione del valore misurato rispetto ai valori di riferimento (es. normale, alto, basso)."

* note ^short = "Note aggiuntive sull'osservazione."
* note ^definition = "Commenti o annotazioni in testo libero relativi all'osservazione, utili a fornire contesto clinico aggiuntivo."

* component ^short = "Componenti dell'osservazione (misurazioni multiple)."
* component ^definition = "Utilizzato quando l'osservazione è composta da più misurazioni correlate (es. pressione arteriosa sistolica e diastolica). Ogni componente ha il proprio codice e valore."
* component.code ^short = "Codice della componente."
* component.code ^definition = "Identifica la specifica componente dell'osservazione."
* component.value[x] ^short = "Valore della componente."
* component.value[x] ^definition = "Risultato numerico o codificato della singola componente dell'osservazione."