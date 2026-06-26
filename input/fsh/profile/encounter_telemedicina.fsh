Profile: EncounterTelevisita
Parent: Encounter
Id: EncounterTelevisita
Title: "Encounter Televisita"
Description: "Profilo della risorsa Encounter utilizzato per rappresentare la visita di telemedicina, incluse informazioni sulla modalità, la disciplina specialistica, i partecipanti e i riferimenti all'appuntamento e alla richiesta di servizio."
* ^status = #draft

* . ^short = "Visita di telemedicina (televisita)."
* . ^definition = "Rappresenta l'evento di visita specialistica effettuato in modalità remota, comprensivo di informazioni sulla disciplina, la struttura erogante, i professionisti coinvolti e il periodo di erogazione."

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains codiceNosologico 1..1
* identifier[codiceNosologico] ^short = "Codice nosologico dell'incontro."
* identifier[codiceNosologico] ^definition = "Identificativo univoco dell'incontro di telemedicina nel sistema informativo della struttura erogante (numero di accettazione, codice nosologico)."
* identifier[codiceNosologico].system = "http://hl7.it/fhir/televisita/sid/codiceNosologico" (exactly)

* status ^short = "Stato attuale dell'incontro."
* status ^definition = "Stato attuale dell'incontro. Possibili valori: planned | arrived | triaged | in-progress | onleave | finished | cancelled"

* class ^short = "Classificazione dell'incontro con il paziente."
* class ^definition = "Classificazione dell'incontro clinico. Nel contesto della telemedicina il valore tipicamente utilizzato è 'VR' (virtual) per indicare una visita da remoto."

* type ^short = "Disciplina specialistica della televisita."
* type ^definition = "Indica la branca specialistica nell'ambito della quale viene erogata la televisita (es. cardiologia, neurologia, dermatologia). Il valore è vincolato al ValueSet delle specialità ambulatoriali."
* type from ValueSet_specialita_PractitionerRole (required) 
* type MS

* priority ^short = "Priorità della richiesta."
* priority ^definition = "Priorità della richiesta."
* subject ^short = "Paziente coinvolto nell'incontro"
* subject only Reference(PatientTelevisita)
* basedOn only Reference(ServiceRequestTelevisita) 
* basedOn ^short = "Richiesta che ha avviato la visita."
* basedOn ^definition = "La richiesta che questa visita soddisfa."

* participant ^short = "Altre figura tecnica coinvolte."
* participant ^definition = "BackboneElement contenente la lista dei coinvolti nella visita oltre al Patient."
* participant ^comment = "In partecipat.individual può essere inserito il riferimento al Practitioner o al PractitionerRole che prende in carico la visita."
* participant.individual only Reference(PractitionerTelevisita)

* appointment only Reference(AppointmentTelevisita)
* appointment ^short = "Appuntamento da cui è partita l'incontro."
* appointment ^definition = "L'appuntamento da cui è partita l'incontro"

* period ^short = "Data e ora di inizio e di fine dell'incontro."
* period ^definition = "Intervallo temporale che indica l'inizio e la fine effettiva della televisita."
* period ^comment = "Se non è (ancora) nota, la fine del Periodo può essere omessa."

* reasonReference ^short = "Motivo scatenante l'incontro."
* reasonReference only Reference(ProcedureTelevisita)

* serviceProvider ^short = "Organizzazione che eroga il il servizio"
* serviceProvider ^definition = "Elemento reference che contiene il riferimento alla struttura che eroga la visita, intesa come poliambulatorio"
* serviceProvider only Reference(OrganizationT1)



//Old extension
// * extension contains
//     actual-period named periodoEffettivo 0..1 and
//     planned-start-date named dataInizioPianificata 0..1 and
//     planned-end-date named dataFinePianificata 0..1 
// * extension[periodoEffettivo] ^short = "Periodo effettivo della visita"
// * extension[periodoEffettivo] ^definition = "Periodo temporale che rappresenta l'inizio e la fine effettiva della visita."
// * extension[dataInizioPianificata] ^short = "Data di inizio pianificata"
// * extension[dataInizioPianificata] ^definition = "Data e ora pianificate di inizio visita (es. data di ammissione)."
// * extension[dataFinePianificata] ^short = "Data di fine pianificata"
// * extension[dataFinePianificata] ^definition = "Data e ora pianificate di fine visita (es. data di dimissione)."