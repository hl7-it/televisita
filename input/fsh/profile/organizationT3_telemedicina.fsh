Profile: OrganizationT3
Parent: Organization
Id: OrganizationT3
Title: "Organization T3 - Unità Operativa / Ambulatorio"
Description: "Profilo della risorsa Organization di tipo 3, utilizzato per rappresentare le unità operative, i reparti e gli ambulatori nel contesto della telemedicina."

* . ^short = "Unità operativa o ambulatorio che eroga la televisita."
* . ^definition = "Rappresenta l'unità organizzativa di terzo livello (unità operativa, reparto, ambulatorio) che eroga direttamente la televisita nell'ambito del presidio (OrganizationT2) e dell'azienda sanitaria (OrganizationT1)."
* identifier ^short = "Codice dell'unità operativa."
* identifier ^definition = "Identificativi usati per identificare l'unità operativa o ambulatorio su diversi sistemi informativi."
* identifier 1..*

* type ^short = "Tipo di organizzazione"
* type ^definition = "Il tipo di organizzazione di cui si tratta"
* type ^comment = "Le organizzazioni possono essere di diversi tipi"

* name ^short = "Nome dell'organizzazione."
* name ^definition = "Descrizione della Organization"

* address.city ^short = "Comune"
* address.district ^short = "Nome della provincia"
* address.state ^short = "Sotto-unità dello stato (Regione)."

* partOf ^short = "Presidio (T2) di cui questa unità fa parte."
* partOf ^definition = "Riferimento al presidio ospedaliero o alla struttura di secondo livello (OrganizationT2) alla quale appartiene l'unità operativa o l'ambulatorio."
* partOf ^comment = "Tale reference assume rilevanza in caso di Organization di tipo poliambulatorio, che è parte di una Organization di tipo asl: in questo caso si può ricorrere ad una reference di tipo logico"


* partOf only Reference(OrganizationT2)
