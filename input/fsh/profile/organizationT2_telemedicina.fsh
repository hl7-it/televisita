Profile: OrganizationT2
Parent: Organization
Id: OrganizationT2
Title: "Organization T2 - Presidio / Ospedale"
Description: "Profilo della risorsa Organization di tipo 2, utilizzato per rappresentare i presidi ospedalieri, i distretti sanitari e le strutture di secondo livello nel contesto della telemedicina."

* ^status = #draft

* . ^short = "Presidio ospedaliero o struttura di secondo livello."
* . ^definition = "Rappresenta un presidio ospedaliero, distretto sanitario o altra struttura di secondo livello che eroga la televisita nell'ambito dell'azienda sanitaria (OrganizationT1)."

// ── Stato ────────────────────────────────────────────────────────────────────
* active ^short = "Stato di validità del presidio."
* active ^definition = "Indica se il presidio ospedaliero o la struttura sanitaria è attiva e disponibile per l'erogazione di prestazioni sanitarie, incluse le televisite."

// ── Identificativi ───────────────────────────────────────────────────────────
* identifier 1..*
* identifier ^short = "Codice del presidio."
* identifier ^definition = "Identificativi di Organization usati per identificare l'Organization su diversi sistemi."

// ── Tipo ─────────────────────────────────────────────────────────────────────
* type from http://hl7.org/fhir/ValueSet/organization-type (preferred)
* type ^short = "Tipo di organizzazione."
* type ^definition = "Il tipo di organizzazione di cui si tratta."
* type ^comment = "Le organizzazioni possono essere di diversi tipi."

// ── Nome e denominazioni alternative ─────────────────────────────────────────
* name ^short = "Nome dell'organizzazione."
* name ^definition = "Denominazione ufficiale del presidio ospedaliero o della struttura di secondo livello."

* alias ^short = "Denominazioni alternative del presidio."
* alias ^definition = "Eventuali denominazioni alternative, sigle o nomi con cui il presidio è comunemente identificato."

// ── Recapiti ─────────────────────────────────────────────────────────────────
* telecom ^short = "Recapiti del presidio."
* telecom ^definition = "Recapiti telefonici, indirizzi e-mail o altri contatti elettronici del presidio ospedaliero."

// ── Indirizzo ────────────────────────────────────────────────────────────────
* address.city ^short = "Comune."
* address.district ^short = "Nome della provincia."
* address.state ^short = "Sotto-unità dello stato (Regione)."

// ── Contatti ─────────────────────────────────────────────────────────────────
* contact ^short = "Referenti del presidio."
* contact ^definition = "Informazioni di contatto relative ai referenti amministrativi o sanitari del presidio."

// ── Gerarchia organizzativa ──────────────────────────────────────────────────
* partOf ^short = "Azienda sanitaria (T1) di cui questo presidio fa parte."
* partOf ^definition = "Riferimento all'azienda sanitaria (OrganizationT1) alla quale appartiene il presidio ospedaliero o la struttura di secondo livello."
* partOf ^comment = "Tale reference assume rilevanza in caso di Organization di tipo poliambulatorio, che è parte di una Organization di tipo asl: in questo caso si può ricorrere ad una reference di tipo logico."