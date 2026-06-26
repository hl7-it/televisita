Extension: ExtRecordCertification
Id: recordCertification
Title: "Certificazione del Record"
Description: "Estensione utilizzata per indicare che un'informazione associata (es. codice fiscale, indirizzo di residenza, dati anagrafici) è stata certificata o autocertificata da una specifica entità (persona od organizzazione). Nel contesto della televisita è impiegata per attestare l'autenticità degli identificativi dell'assistito e degli indirizzi riportati nel referto."
Context: Address, Patient, Patient.identifier
* ^version = "0.0.1"
* ^status = #draft
* . ^short = "Certificazione del dato da parte di un'entità autorevole."
* . ^definition = "Indica che il dato associato (es. codice fiscale, indirizzo di residenza) è stato certificato da una specifica entità istituzionale o autocertificato dall'assistito. Contiene informazioni sulla data di certificazione e sul soggetto certificante."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    when 0..1 and
    who 0..1 and
    rank 0..*
* extension[when] ^short = "Data o periodo di certificazione."
* extension[when] ^definition = "Data puntuale o intervallo temporale in cui il dato è stato certificato dall'entità competente."
* extension[when].value[x] only dateTime or Period
* extension[who] ^short = "Entità che ha effettuato la certificazione."
* extension[who] ^definition = "Riferimento all'entità (organizzazione o persona) che ha certificato il dato. Può essere espressa come codice (es. MEF, INPS, Comune) o come riferimento a una risorsa FHIR."
* extension[who].value[x] only CodeableConcept or Reference
* extension[who].value[x] from $tipoCertificatore (extensible)
* extension[rank] ^short = "Ordine di priorità della certificazione."
* extension[rank] ^definition = "Valore decimale che indica il livello di priorità o affidabilità della certificazione, nei casi in cui siano presenti più certificazioni per lo stesso dato."
* extension[rank].value[x] only decimal

Extension: BirthPlaceIta
Id: birth-place-ita
Title: "Luogo di Nascita - ITA"
Description: "Estensione utilizzata per rappresentare il luogo di nascita dell'assistito secondo il formato italiano, strutturato come un indirizzo conforme al profilo AddressItTelemedicina. Nel contesto della televisita è rilevante per l'identificazione anagrafica dell'assistito."
* . ^short = "Luogo di nascita dell'assistito (formato italiano)."
* . ^definition = "Contiene l'indirizzo del luogo di nascita dell'assistito, espresso secondo il profilo AddressItTelemedicina. Include comune, provincia, regione e stato di nascita, utili per l'identificazione anagrafica nel sistema sanitario italiano."
* value[x] only AddressItTelemedicina
* value[x] ^short = "Indirizzo del luogo di nascita."
* value[x] ^definition = "Indirizzo strutturato del luogo di nascita, conforme al datatype AddressItTelemedicina. Comprende comune (city), provincia (district), regione (state) e stato (country) di nascita."