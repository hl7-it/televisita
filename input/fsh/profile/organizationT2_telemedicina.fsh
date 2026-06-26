
Profile: OrganizationT2
Parent: Organization
Id: OrganizationT2
Title: "Organization T2 - Presidio / Ospedale"
Description: "Profilo della risorsa Organization di tipo 2, utilizzato per rappresentare i presidi ospedalieri, i distretti sanitari e le strutture di secondo livello nel contesto della telemedicina."

* . ^short = "Presidio ospedaliero o struttura di secondo livello."
* . ^definition = "Rappresenta un presidio ospedaliero, distretto sanitario o altra struttura di secondo livello che eroga la televisita nell'ambito dell'azienda sanitaria (OrganizationT1)."
* identifier ^short = "Codice del presidio."
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

* partOf ^short = "Azienda sanitaria (T1) di cui questo presidio fa parte."
* partOf ^definition = "Riferimento all'azienda sanitaria (OrganizationT1) alla quale appartiene il presidio ospedaliero o la struttura di secondo livello."
* partOf ^comment = "Tale reference assume rilevanza in caso di Organization di tipo poliambulatorio, che è parte di una Organization di tipo asl: in questo caso si può ricorrere ad una reference di tipo logico"

