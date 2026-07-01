Profile: ServiceRequestTelevisita
Parent: ServiceRequest
Id: ServiceRequestTelevisita
Title: "ServiceRequest Televisita"
Description: "Profilo della risorsa ServiceRequest utilizzata per rappresentare la richiesta o prescrizione specialistica associata al servizio di televisita."
* ^status = #draft

* identifier 1..*
* identifier ^short = "Identificativo della richiesta o prescrizione"
* identifier ^definition = "Identificativo associato alla richiesta o prescrizione della prestazione, ad esempio identificativo aziendale, regionale o numero ricetta medica."

* requisition 0..1
* requisition ^short = "Identificativo della richiesta composita"
* requisition ^definition = "Identificativo comune a più richieste generate contestualmente dallo stesso autore. Nei casi di prescrizione può rappresentare l'NRE o il numero di ricetta cartacea."
* requisition.type ^short = "Tipologia di identificativo"
* requisition.type ^definition = "Codice che specifica la tipologia dell'identificativo della richiesta composita."
* requisition.type.coding ^slicing.discriminator.type = #value
* requisition.type.coding ^slicing.discriminator.path = "system"
* requisition.type.coding ^slicing.rules = #open
* requisition.type.coding contains tipoRicetta 0..1
* requisition.type.coding[tipoRicetta] ^short = "Tipo ricetta"
* requisition.type.coding[tipoRicetta] ^definition = "Codice che identifica la tipologia di ricetta, ove applicabile."
* requisition.type.coding[tipoRicetta].code 1..
* requisition.type.coding[tipoRicetta].code from vs-tipo-ricetta (required)
* requisition.system obeys requisition-system

* status 1..1
* status ^short = "Stato della richiesta"
* status ^definition = "Stato della richiesta o prescrizione di televisita."
* status ^comment = "Nel caso di una richiesta/prescrizione attiva il valore atteso è generalmente 'active'. Gli stati relativi all'esecuzione della prestazione sono rappresentati dalle risorse di evento, quali Appointment, Encounter o Task."

* intent 1..1
* intent ^short = "Intento della richiesta"
* intent ^definition = "Intento della ServiceRequest. Nel caso di prescrizione o richiesta specialistica il valore atteso è generalmente 'order'."
* intent ^comment = "L'intento qualifica il significato della richiesta e ne modifica l'interpretazione."

* category 1..*
* category ^short = "Classificazione della richiesta"
* category ^definition = "Classificazione della prestazione richiesta, ad esempio branca specialistica, ambito clinico o servizio di telemedicina."
* category from specialita-mediche (preferred)

* priority 0..1
* priority ^short = "Priorità della richiesta"
* priority ^definition = "Priorità associata alla richiesta o prescrizione della prestazione."
* priority ^comment = "Può essere utilizzata per rappresentare la priorità clinico-organizzativa della richiesta, ove disponibile."

//* code 1..1
* code ^short = "Prestazione richiesta"
* code ^definition = "Codice della prestazione richiesta o prescritta. Nel contesto della televisita rappresenta la prestazione specialistica richiesta, eventualmente erogabile in modalità televisita."

* code.coding 1..*
* code.coding ^short = "Codifica della prestazione richiesta"
* code.coding ^definition = "Codice della prestazione secondo il sistema terminologico di riferimento."
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    codiceNomenclatoreTariffario 0..1 and
    codiceCatalogoRegionalePrestazione 0..1

* code.coding[codiceNomenclatoreTariffario] from VsCatalogoNazionalePrestazioni (preferred)
* code.coding[codiceNomenclatoreTariffario] ^short = "Codice del nomenclatore tariffario nazionale"
* code.coding[codiceNomenclatoreTariffario] ^definition = "Codifica della prestazione secondo il catalogo o nomenclatore nazionale delle prestazioni."
* code.coding[codiceNomenclatoreTariffario].system 1..1
* code.coding[codiceNomenclatoreTariffario].system = $csCatalogoNazionalePrestazioni (exactly)
* code.coding[codiceNomenclatoreTariffario].system ^short = "Sistema di codifica nazionale"
* code.coding[codiceNomenclatoreTariffario].code 1..1
* code.coding[codiceNomenclatoreTariffario].code ^short = "Codice nazionale della prestazione"
* code.coding[codiceNomenclatoreTariffario].display ^short = "Descrizione della prestazione"

// * code.coding[codiceCatalogoRegionalePrestazione] from $catalogoRegionalePrestazioni (preferred)
// * code.coding[codiceCatalogoRegionalePrestazione] ^short = "Codice del catalogo regionale della prestazione"
// * code.coding[codiceCatalogoRegionalePrestazione] ^definition = "Codifica della prestazione secondo il catalogo regionale, ove disponibile."
// * code.coding[codiceCatalogoRegionalePrestazione].system 1..1
// * code.coding[codiceCatalogoRegionalePrestazione].system = $csCatalogoRegionalePrestazioni (exactly)
// * code.coding[codiceCatalogoRegionalePrestazione].system ^short = "Sistema di codifica regionale"
// * code.coding[codiceCatalogoRegionalePrestazione].code 1..1
// * code.coding[codiceCatalogoRegionalePrestazione].code ^short = "Codice regionale della prestazione"
// * code.coding[codiceCatalogoRegionalePrestazione].display ^short = "Descrizione regionale della prestazione"

* orderDetail 0..*
* orderDetail ^short = "Dettagli aggiuntivi della richiesta"
* orderDetail ^definition = "Ulteriori dettagli relativi alla prestazione richiesta, incluse eventuali indicazioni organizzative o cliniche."

* quantity[x] 0..1
* quantity[x] ^short = "Quantità della prestazione"
* quantity[x] ^definition = "Quantità o molteplicità della prestazione richiesta."

* subject 1..1
* subject only Reference(PatientTelevisita)
* subject ^short = "Assistito"
* subject ^definition = "Riferimento al paziente/assistito per cui viene richiesta o prescritta la prestazione di televisita."

* encounter 0..1
* encounter ^short = "Incontro associato alla richiesta"
* encounter ^definition = "Riferimento all'Encounter nel cui contesto è stata generata o documentata la richiesta, ove disponibile."

* occurrence[x] 0..1
* occurrence[x] ^short = "Periodo o data di erogazione richiesta"
* occurrence[x] ^definition = "Data, periodo o timing entro cui la prestazione dovrebbe essere erogata."

* authoredOn 1..1
* authoredOn ^short = "Data della richiesta o prescrizione"
* authoredOn ^definition = "Data di compilazione o emissione della richiesta/prescrizione della prestazione."

* requester 1..1
* requester only Reference(PractitionerRoleTelevisita or PractitionerTelevisita)
* requester ^short = "Medico richiedente o prescrittore"
* requester ^definition = "Professionista sanitario o ruolo professionale che ha richiesto o prescritto la prestazione."

* performer 0..*
* performer only Reference(PractitionerRoleTelevisita or PractitionerTelevisita)
* performer ^short = "Erogatore previsto"
* performer ^definition = "Riferimento al soggetto che dovrebbe erogare la prestazione."
* performer ^comment = "Può riferirsi  a un professionista o a un ruolo professionale. Nel contesto della televisita può essere utilizzato per indicare lo specialista responsabile dell'erogazione."

* reasonCode 0..*
* reasonCode ^short = "Quesito diagnostico o motivo della richiesta"
* reasonCode ^definition = "Motivazione clinica, quesito diagnostico o giustificazione della richiesta della prestazione, in forma codificata o testuale."

* reasonReference 0..*
* reasonReference ^short = "Riferimento alla motivazione clinica"
* reasonReference ^definition = "Riferimento a condizioni cliniche, osservazioni, referti o altri elementi clinici che motivano la richiesta della prestazione."

* insurance 0..*
* insurance ^short = "Copertura o esenzione associata"
* insurance ^definition = "Riferimento alla copertura amministrativa o assicurativa associata alla richiesta. Può essere utilizzato per rappresentare eventuali esenzioni."

* supportingInfo 0..*
* supportingInfo ^short = "Informazioni cliniche di supporto"
* supportingInfo ^definition = "Informazioni aggiuntive utili alla valutazione o all'esecuzione della prestazione richiesta, come documenti clinici, referti precedenti, osservazioni o altre evidenze disponibili."

* note 0..*
* note ^short = "Note sulla richiesta"
* note ^definition = "Note o commenti relativi alla richiesta o prescrizione della prestazione."
* note ^comment = "Le note non devono essere utilizzate per veicolare informazioni strutturate che possono essere rappresentate tramite elementi FHIR dedicati."

Invariant: requisition-system
Description: "Il system deve seguire questa struttura: 'http://www.[nome prodotto o fornitore].it/identifiers/requisition'"
Severity: #error
Expression: "matches('^http://www\\\\..+\\\\.it/identifiers/requisition$')"

