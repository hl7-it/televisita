Profile: MedicationStatementTelevisita
Parent: MedicationStatement
Id: MedicationStatementTelevisita
Title: "MedicationStatement Televisita"
Description: "Profilo della risorsa MedicationStatement utilizzato per rappresentare la terapia farmacologica in atto nel paziente al momento della televisita, ovvero farmaci già assunti indipendentemente da una prescrizione corrente."

* ^status = #draft

* . ^short = "Terapia farmacologica in corso al momento della televisita."
* . ^definition = "Rappresenta un farmaco che il paziente sta assumendo o ha assunto al momento della televisita. A differenza di MedicationRequest (terapia consigliata), questa risorsa descrive la terapia già in atto, raccolta in fase di anamnesi farmacologica."

// ── Stato ────────────────────────────────────────────────────────────────────
* status 1..1
* status ^short = "Stato della dichiarazione della terapia in atto."
* status ^definition = "Indica lo stato corrente della terapia farmacologica dichiarata. I valori tipici nel contesto della televisita sono: 'active' (terapia in corso), 'completed' (terapia conclusa), 'entered-in-error' (inserita per errore)."
* status from http://hl7.org/fhir/ValueSet/medication-statement-status|4.0.1 (required)

// ── Farmaco ──────────────────────────────────────────────────────────────────
* medication[x] only CodeableConcept
* medicationCodeableConcept 1..1
* medicationCodeableConcept ^short = "Farmaco assunto dal paziente."
* medicationCodeableConcept ^definition = "Identificativo del farmaco espresso tramite codice. Il sistema di codifica preferito è AIC (Autorizzazione all'Immissione in Commercio) dell'AIFA oppure ATC, con il nome commerciale o la denominazione comune internazionale (DCI) in `text`."
* medicationCodeableConcept.coding 1..*
* medicationCodeableConcept.coding ^short = "Codifica del farmaco (es. AIC, ATC, SNOMED CT)."
* medicationCodeableConcept.coding ^definition = "Codifica strutturata del farmaco tramite un sistema di codifica standard riconosciuto (AIC, ATC, SNOMED CT)."
* medicationCodeableConcept.coding.system 1..1
* medicationCodeableConcept.coding.system ^short = "Sistema di codifica del farmaco."
* medicationCodeableConcept.coding.code 1..1
* medicationCodeableConcept.coding.code ^short = "Codice del farmaco nel sistema indicato."
* medicationCodeableConcept.coding.display 0..1
* medicationCodeableConcept.coding.display ^short = "Descrizione leggibile del farmaco nel sistema di codifica."
* medicationCodeableConcept.text 0..1
* medicationCodeableConcept.text ^short = "Denominazione testuale del farmaco (DCI o nome commerciale)."
* medicationCodeableConcept.text ^definition = "Testo in linguaggio naturale che descrive il farmaco, ad esempio il nome commerciale o la denominazione comune internazionale (DCI), utile quando il codice non è disponibile o come integrazione al codice."

// ── Soggetto e contesto ──────────────────────────────────────────────────────
* subject 1..1
* subject only Reference(PatientTelevisita)
* subject ^short = "Paziente a cui si riferisce la terapia farmacologica in atto."
* subject ^definition = "Riferimento al paziente che sta assumendo il farmaco. Deve essere conforme al profilo PatientTelevisita."

* context 0..1
* context only Reference(EncounterTelevisita)
* context ^short = "Sessione di televisita in cui la terapia è stata rilevata."
* context ^definition = "Riferimento all'Encounter (sessione di televisita) nel corso del quale è stata raccolta l'informazione relativa alla terapia in atto del paziente."

// ── Periodo di assunzione ────────────────────────────────────────────────────
* effective[x] only Period or dateTime
* effectivePeriod ^short = "Periodo di assunzione del farmaco (data inizio – fine)."
* effectivePeriod ^definition = "Intervallo temporale nel quale il paziente ha assunto o sta assumendo il farmaco. Utilizzare effectivePeriod quando sono noti sia l'inizio che la fine del trattamento."
* effectiveDateTime ^short = "Data di rilevazione della terapia farmacologica."
* effectiveDateTime ^definition = "Data e ora in cui è stata rilevata la terapia in atto, ad esempio nel corso dell'anamnesi farmacologica durante la televisita."

* dateAsserted 0..1
* dateAsserted ^short = "Data in cui la terapia è stata dichiarata o rilevata."
* dateAsserted ^definition = "Data e ora in cui il medico o il paziente ha dichiarato che il farmaco è in uso. Corrisponde in genere alla data della televisita."

// ── Fonte dell'informazione e derivazione ────────────────────────────────────
* informationSource 0..1
* informationSource only Reference(PatientTelevisita or PractitionerTelevisita or PractitionerRoleTelevisita or RelatedPerson)
* informationSource ^short = "Fonte dell'informazione sulla terapia farmacologica."
* informationSource ^definition = "Indica chi ha fornito l'informazione relativa alla terapia in atto: il paziente stesso, un familiare (RelatedPerson), il medico curante (PractitionerTelevisita) o il medico nel suo ruolo professionale (PractitionerRoleTelevisita)."

* derivedFrom 0..*
* derivedFrom ^short = "Risorsa da cui deriva questa dichiarazione terapeutica."
* derivedFrom ^definition = "Riferimento a una o più risorse che hanno generato questa dichiarazione, ad esempio una MedicationRequest precedente o un'altra MedicationStatement proveniente dal Fascicolo Sanitario Elettronico o dal Medico di Medicina Generale."

// ── Motivazioni cliniche ─────────────────────────────────────────────────────
* reasonCode 0..*
* reasonCode ^short = "Motivo clinico dell'assunzione del farmaco."
* reasonCode ^definition = "Codice o testo che descrive il motivo clinico per cui il paziente assume il farmaco (es. diagnosi, patologia cronica, sintomo)."

* reasonReference 0..*
* reasonReference only Reference(Condition or ObservationTelevisita)
* reasonReference ^short = "Condizione clinica o osservazione che motiva la terapia."
* reasonReference ^definition = "Riferimento a una Condition o ObservationTelevisita che descrive la problematica clinica per cui il farmaco è assunto, consentendo il collegamento strutturato tra terapia in atto e diagnosi."

// ── Posologia ────────────────────────────────────────────────────────────────
* dosage 0..*
* dosage ^short = "Posologia della terapia farmacologica."
* dosage ^definition = "Descrizione della modalità di assunzione del farmaco: frequenza, via di somministrazione e dose. Può essere espressa in forma testuale (dosage.text) o strutturata."
* dosage.text 0..1
* dosage.text ^short = "Descrizione testuale della posologia."
* dosage.text ^definition = "Testo libero che descrive le istruzioni di dosaggio, ad esempio '1 compressa da 500 mg due volte al giorno'."
* dosage.timing 0..1
* dosage.timing ^short = "Tempistiche di somministrazione."
* dosage.timing ^definition = "Struttura che descrive la frequenza e il ritmo di somministrazione del farmaco (es. ogni 8 ore, due volte al giorno)."
* dosage.route 0..1
* dosage.route ^short = "Via di somministrazione."
* dosage.route ^definition = "Specifica la via attraverso cui il farmaco viene somministrato (es. orale, endovenosa, topica)."
* dosage.doseAndRate 0..*
* dosage.doseAndRate ^short = "Dosaggio unitario per singola somministrazione."
* dosage.doseAndRate ^definition = "Quantità di farmaco per singola somministrazione e la velocità (rate) di erogazione, se applicabile."
* dosage.doseAndRate.doseQuantity ^short = "Dose espressa come quantità (es. 400 mg)."

// ── Note ─────────────────────────────────────────────────────────────────────
* note 0..*
* note ^short = "Note sulla terapia farmacologica in atto."
* note ^definition = "Annotazioni aggiuntive in testo libero relative alla terapia in corso, non altrimenti rappresentabili negli elementi strutturati (es. sospensione temporanea, intolleranza pregressa, motivazione del cambio di dose)."