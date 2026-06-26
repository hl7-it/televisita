Profile: EncounterTelevisita
Parent: Encounter
Id: EncounterTelevisita
Title: "Encounter Televisita"
Description: "Profilo della risorsa Encounter utilizzato per rappresentare la visita di telemedicina, incluse informazioni sulla modalità, la disciplina specialistica, i partecipanti e i riferimenti all'appuntamento e alla richiesta di servizio."
* ^status = #draft

* . ^short = "Visita di telemedicina (televisita)."
* . ^definition = "Rappresenta l'evento di visita specialistica effettuato in modalità remota, comprensivo di informazioni sulla disciplina, la struttura erogante, i professionisti coinvolti e il periodo di erogazione."

// ── Identificativi ──────────────────────────────────────────────────────────
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains codiceNosologico 1..1
* identifier[codiceNosologico] ^short = "Codice nosologico dell'incontro."
* identifier[codiceNosologico] ^definition = "Identificativo univoco dell'incontro di telemedicina nel sistema informativo della struttura erogante (numero di accettazione, codice nosologico)."
* identifier[codiceNosologico].system = "http://hl7.it/fhir/televisita/sid/codiceNosologico" (exactly)

// ── Stato ───────────────────────────────────────────────────────────────────
* status ^short = "Stato attuale dell'incontro."
* status ^definition = "Stato attuale dell'incontro. Possibili valori: planned | arrived | triaged | in-progress | onleave | finished | cancelled"

// ── Classificazione e tipo ──────────────────────────────────────────────────
* class from VsClassEncounterTelevisita (required)
* class ^short = "Classificazione dell'incontro con il paziente."
* class ^definition = "Classificazione dell'incontro clinico. Nel contesto della telemedicina i valori ammessi sono 'VR' (virtual) per la visita da remoto e 'HH' (home health) per l'assistenza domiciliare."

* type from ValueSet_specialita_PractitionerRole (required)
* type MS
* type ^short = "Disciplina specialistica della televisita."
* type ^definition = "Indica la branca specialistica nell'ambito della quale viene erogata la televisita (es. cardiologia, neurologia, dermatologia). Il valore è vincolato al ValueSet delle specialità ambulatoriali."

* serviceType from specialita-mediche (preferred)
* serviceType ^short = "Tipologia di servizio erogato."
* serviceType ^definition = "Identifica il servizio sanitario erogato durante l'incontro, ad esempio televisita specialistica, visita di controllo o follow-up."

* priority ^short = "Priorità della richiesta."
* priority ^definition = "Priorità della richiesta."

// ── Soggetto e riferimenti ──────────────────────────────────────────────────
* subject only Reference(PatientTelevisita)
* subject ^short = "Paziente coinvolto nell'incontro."
* subject ^definition = "Riferimento all'assistito che è oggetto della televisita."

* episodeOfCare ^short = "Percorso assistenziale di riferimento."
* episodeOfCare ^definition = "Riferimento all'episodio di cura o al percorso assistenziale nel quale la televisita è inserita."

* basedOn only Reference(ServiceRequestTelevisita)
* basedOn ^short = "Richiesta che ha avviato la visita."
* basedOn ^definition = "La richiesta di servizio (ServiceRequest) che questa visita soddisfa."

* appointment only Reference(AppointmentTelevisita)
* appointment ^short = "Appuntamento da cui è partita l'incontro."
* appointment ^definition = "L'appuntamento prenotato da cui ha avuto origine questa televisita."

// ── Periodo ─────────────────────────────────────────────────────────────────
* period ^short = "Data e ora di inizio e di fine dell'incontro."
* period ^definition = "Intervallo temporale che indica l'inizio e la fine effettiva della televisita."
* period ^comment = "Se non è (ancora) nota, la fine del Periodo può essere omessa."

// ── Motivazione e diagnosi ──────────────────────────────────────────────────
* reasonCode ^short = "Motivazione clinica della televisita."
* reasonCode ^definition = "Descrive il quesito clinico, il motivo della visita o la problematica sanitaria che ha determinato l'erogazione della televisita."

* reasonReference only Reference(ProcedureTelevisita)
* reasonReference ^short = "Motivo scatenante l'incontro (Procedure)."
* reasonReference ^definition = "Riferimento alla Procedure che ha motivato o è correlata all'incontro di telemedicina."

* diagnosis ^short = "Diagnosi associate all'incontro."
* diagnosis ^definition = "Elenco delle diagnosi formulate, confermate o rivalutate nel corso della televisita."
* diagnosis.condition only Reference(Condition)

// ── Partecipanti ─────────────────────────────────────────────────────────────
* participant ^short = "Altre figure tecniche coinvolte."
* participant ^definition = "BackboneElement contenente la lista dei coinvolti nella visita oltre al Patient."
* participant ^comment = "In participant.individual può essere inserito il riferimento al Practitioner o al PractitionerRole che prende in carico la visita."
* participant.type ^short = "Ruolo del partecipante."
* participant.type ^definition = "Specifica il ruolo ricoperto dal partecipante durante la televisita (es. medico specialista, infermiere, caregiver)."
* participant.period ^short = "Periodo di partecipazione."
* participant.period ^definition = "Intervallo temporale durante il quale il partecipante ha preso parte alla televisita."
* participant.individual only Reference(PractitionerTelevisita or PractitionerRoleTelevisita)
* participant.individual ^short = "Professionista sanitario partecipante."
* participant.individual ^definition = "Professionista sanitario che ha preso parte alla televisita in qualità di medico specialista o altro operatore."

// ── Erogatore ────────────────────────────────────────────────────────────────
* serviceProvider only Reference(OrganizationT1)
* serviceProvider ^short = "Organizzazione che eroga il servizio."
* serviceProvider ^definition = "Riferimento alla struttura sanitaria (OrganizationT1) che eroga la televisita, intesa come poliambulatorio o unità organizzativa responsabile."

* location.location only Reference(Location)

* hospitalization 0..0