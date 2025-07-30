
Profile: OrganizationT2
Parent: Organization
Id: OrganizationT2
Description: "Profilo base generico per Organization di tipo 2 (es. ospedale, distretto)"
// * identifier ^slicing.discriminator.type = #value
// * identifier ^slicing.discriminator.path = "system"
// * identifier ^slicing.rules = #open
// * identifier contains IdentificativoSTS11 0..1 and
//     codicePresidio 0..1 
// * identifier[codicePresidio] ^sliceName = "codicePresidio"
// * identifier[codicePresidio] ^short = "Codice del presidio"
* identifier ^short = "Identificativo dell'organizzazione."
* identifier ^definition = "Identificativi di Organization usati per identificare l'Organization su diversi sistemi"
* identifier 1..*

* type ^short = "Tipo di organizzazione"
* type ^definition = "Il tipo di organizzazione di cui si tratta"
* type ^comment = "Le organizzazioni possono essere di diversi tipi"

* name ^short = "Nome dell'organizzazione."
* name ^definition = "Descrizione della Organization"

* address.city ^short = "Comune"
* address.district ^short = "Nome della provincia"
* address.state ^short = "Sotto-unità dello stato (Regione)."

* partOf ^short = "L'Organization di cui questa Organization è parte"
* partOf ^definition = "L'Organization di cui questa Organization è parte"
* partOf ^comment = "Tale reference assume rilevanza in caso di Organization di tipo poliambulatorio, che è parte di una Organization di tipo asl: in questo caso si può ricorerre ad una reference di tipo logico"


* identifier ^short = "Codice del presidio"


* partOf only Reference(OrganizationT1)

