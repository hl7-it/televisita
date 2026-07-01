Profile: ProcedureTelevisita
Parent: Procedure
Id: ProcedureTelevisita
Title: "Procedure Televisita"
Description: "Profilo della risorsa Procedure utilizzato per rappresentare le prestazioni e le procedure cliniche erogate nel corso della televisita, inclusi codici, periodi di erogazione, modalità esecutive e strumentazione utilizzata."

* ^status = #draft
* . ^short = "Prestazione clinica erogata durante la televisita."
* . ^definition = "Rappresenta una prestazione sanitaria o una procedura clinica eseguita nel corso della televisita, identificata da un codice del Catalogo Nazionale delle Prestazioni, con indicazione del periodo di erogazione e delle modalità di esecuzione."

// ── Estensioni ───────────────────────────────────────────────────────────────
* extension contains http://hl7.org/fhir/StructureDefinition/procedure-method|5.3.0 named ModalitaEsecuzioneProcedura 0..1
* extension[ModalitaEsecuzioneProcedura] ^short = "Modalità di esecuzione della procedura operativa."
* extension[ModalitaEsecuzioneProcedura] ^definition = "Descrizione della modalità pratica con cui è stata eseguita la procedura operativa nell'ambito della televisita."

// ── Identificativi ───────────────────────────────────────────────────────────
* identifier ^short = "Identificativo della prestazione eseguita."
* identifier ^definition = "Identificativo assegnato alla prestazione o procedura erogata nell'ambito della televisita, utile per la tracciabilità clinica, amministrativa o di rendicontazione."

// ── Stato ────────────────────────────────────────────────────────────────────
* status ^short = "Stato della prestazione eseguita."
* status ^definition = "Stato della procedura o prestazione documentata. Nel contesto della televisita, al termine dell'erogazione il valore atteso è generalmente `completed`."
* status ^comment = "Il codice \"unknown\" non deve essere utilizzato per comunicare altri stati. Il codice \"unknown\" deve essere usato quando si applica uno degli stati, ma il sistema autore non conosce lo stato attuale della procedura.\n\nQuesto elemento è etichettato come modificatore perché lo stato contiene codici che contrassegnano la risorsa come non valida al momento."

// ── Categoria e codice ───────────────────────────────────────────────────────

* category ^short = "Categoria della procedura operativa eseguita."
* category ^definition = "Classifica la procedura in una categoria clinica. Nel contesto della televisita può indicare la branca specialistica o la tipologia di prestazione erogata."

* code 1..
* code from VsCatalogoNazionalePrestazioni (required)
* code ^short = "Codice della prestazione eseguita."
* code ^definition = "CodeableConcept che contiene i codici identificativi delle tipologie di interventi, come ad esempio i codici del Catalogo Nazionale delle Prestazioni."

// ── Soggetto e contesto ──────────────────────────────────────────────────────
* subject only Reference(PatientTelevisita)
* subject ^short = "Paziente coinvolto nella procedura."
* subject ^definition = "Riferimento all'assistito su cui è stata eseguita la procedura."

* encounter only Reference(EncounterTelevisita)
* encounter ^short = "Incontro di televisita."
* encounter ^definition = "Riferimento all'Encounter che rappresenta l'incontro clinico durante il quale la prestazione è stata effettivamente erogata."

// ── Periodo di esecuzione ────────────────────────────────────────────────────
* performed[x] 1..
* performed[x] only Period
* performed[x] ^short = "Data e ora di esecuzione della procedura."
* performed[x] ^definition = "Periodo che contiene la data e l'ora di inizio e fine dell'erogazione della prestazione."

// ── Registrazione e performer ────────────────────────────────────────────────
* recorder only Reference(PractitionerTelevisita or PractitionerRoleTelevisita)
* recorder ^short = "Soggetto che registra la prestazione."
* recorder ^definition = "Professionista sanitario o ruolo professionale che registra la prestazione eseguita nel sistema informativo."

* performer ^short = "Persone che hanno eseguito la procedura."
* performer ^definition = "Elemento ripetibile contenente i riferimenti a chi prende parte alla procedura di intervento e alle tipologie di performance offerte durante la procedura."
* performer.actor only Reference(PractitionerTelevisita or PractitionerRoleTelevisita or OrganizationT1 or Patient)

// ── Riferimenti e motivazioni ────────────────────────────────────────────────
* basedOn ^short = "Richiesta su cui si basa questa procedura."
* basedOn ^definition = "Riferimento alla risorsa ServiceRequest che contiene i dettagli della richiesta su cui si basa questa procedura di erogazione."
* basedOn ^comment = "I riferimenti DEVONO essere un riferimento a una risorsa FHIR effettiva e DEVONO essere risolvibili. La risoluzione può avvenire tramite recupero dall'URL o trattando un riferimento assoluto come un URL canonico."

* partOf only Reference(Procedure or ObservationTelevisita)
* partOf ^short = "Prestazione o osservazione di cui questa procedura fa parte."
* partOf ^definition = "Riferimento a una procedura o osservazione più ampia di cui la prestazione eseguita rappresenta una componente."

* reasonCode ^short = "Motivo clinico della prestazione."
* reasonCode ^definition = "Motivo clinico, quesito diagnostico o indicazione che ha determinato l'esecuzione della prestazione nell'ambito della televisita."

* reasonReference only Reference(Condition or ObservationTelevisita)
* reasonReference ^short = "Riferimenti clinici che motivano la prestazione."
* reasonReference ^definition = "Riferimento a condizioni cliniche, osservazioni, richieste o altri elementi clinici che giustificano l'esecuzione della prestazione."

// ── Esito, strumentazione, referto e note ────────────────────────────────────
* outcome ^short = "Parametri rilevanti al fine di caratterizzare la procedura."
* outcome ^definition = "Elemento utilizzato per gestire la relazione del professionista generata al termine dell'erogazione."
* outcome ^comment = "Se il risultato contiene solo testo narrativo, può essere catturato usando il CodeableConcept.text."
* outcome.text ^short = "Testo libero per la relazione alla fine della procedura."
* outcome.text ^definition = "Testo in linguaggio naturale che descrive l'esito della prestazione. Campo disponibile per la relazione nel caso di Teleconsulto oppure Teleassistenza."

* usedReference ^short = "Strumentazione utilizzata nel corso della procedura."
* usedReference ^definition = "Riferimento a dispositivi, strumenti, piattaforme o altri elementi utilizzati durante l'erogazione della prestazione, ove rilevanti."

* report only Reference(CompositionRefertoTelevisita or DocumentReference)
* report ^short = "Referto o documento collegato alla prestazione."
* report ^definition = "Riferimento al documento clinico o al referto prodotto a seguito della prestazione eseguita nell'ambito della televisita."

* note ^short = "Note sulla procedura."
* note ^definition = "Informazioni aggiuntive in testo libero relative alla procedura clinica eseguita, non altrimenti rappresentabili negli elementi strutturati."

