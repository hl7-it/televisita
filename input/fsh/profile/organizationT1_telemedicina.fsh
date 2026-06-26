Profile: OrganizationT1
Parent: Organization
Id: OrganizationT1
Title: "Organization T1 - Azienda Sanitaria"
Description: "Profilo della risorsa Organization di tipo 1, utilizzato per rappresentare le aziende sanitarie locali (ASL), aziende ospedaliere (AO) e IRCCS nel contesto della telemedicina."

* . ^short = "Azienda sanitaria, AO o IRCCS responsabile della televisita."
* . ^definition = "Rappresenta l'organizzazione sanitaria di primo livello (ASL, AO, IRCCS) che eroga o supervisiona il servizio di televisita. Può contenere riferimenti a strutture di livello inferiore tramite i profili OrganizationT2 e OrganizationT3."

* identifier ^short = "Identificativo dell'organizzazione."
* identifier ^definition = "Identificativi di Organization usati per identificare l'Organization su diversi sistemi"

* type ^short = "Tipo di organizzazione"
* type ^definition = "Il tipo di organizzazione di cui si tratta"
* type ^comment = "Le organizzazioni possono essere di diversi tipi"

* name ^short = "Nome dell'organizzazione."
* name ^definition = "Descrizione della Organization"

* address.city ^short = "Comune"
* address.district ^short = "Nome della provincia"
* address.state ^short = "Sotto-unità dello stato (Regione)."

* partOf ^short = "Organizzazione gerarchicamente superiore."
* partOf ^definition = "L'organizzazione di cui questa è parte. Assume rilevanza in caso di struttura che è parte di un'ASL, consentendo di risalire alla gerarchia organizzativa."
* partOf ^comment = "Tale reference assume rilevanza in caso di Organization di tipo poliambulatorio, che è parte di una Organization di tipo asl: in questo caso si può ricorrere ad una reference di tipo logico"

* contact ^short = "Recapiti dell'organizzazione."
* contact ^definition = "Informazioni di contatto dell'azienda sanitaria, inclusi numeri di telefono del CUP, indirizzi e-mail istituzionali e altri recapiti."

* telecom ^short = "Recapiti telefonici o elettronici dell'organizzazione."
* telecom ^definition = "Numeri di telefono, indirizzi e-mail o altri recapiti elettronici dell'organizzazione sanitaria."


* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "value"
* identifier ^slicing.discriminator[1].type = #pattern
* identifier ^slicing.discriminator[1].path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier pattern"
* identifier 1..*  
* identifier contains 
	asl 0..1 
	and aslRegione 0..1
	and aziendaOspedaliera 0..1 
	and struttura 0..1 
	and partitaIva 0..1
	and codiceFiscale 0..1
	and strutturaInterna 0..1

* identifier[asl] ^short = "Identificativo Azienda Sanitaria Locale"
* identifier[asl].system = "http://hl7.it/sid/fls" (exactly) // pattern
* identifier[asl].value from VsMinisteroSaluteAsl (required) //$asl

* identifier[aslRegione].value from VsAnagrafiRegionali // pattern $asl
* identifier[aslRegione] ^short = "Identificativo Regionale Azienda Sanitaria Locale"

* identifier[aziendaOspedaliera].value from VsMinisteroSaluteIdAziendeOspedaliere (required)
* identifier[aziendaOspedaliera].system = "http://hl7.it/sid/hsp" (exactly)  // pattern
* identifier[aziendaOspedaliera] ^short = "Identificativo Azienda Ospedaliera"
//* identifier[aziendaOspedaliera].value from VsMinisteroSaluteIdAziendeOspedaliere (required)

* identifier[struttura].system = "http://hl7.it/sid/hsp" (exactly) // pattern
* identifier[struttura] ^short = "Identificativo Struttura di Ricovero"
//* identifier[struttura].value from VsMinisteroSaluteIdStrutture (required)
* identifier[struttura].value from VsMinisteroSaluteIdStrutture (required)

* identifier[strutturaInterna].system = "http://hl7.it/sid/hsp" (exactly) // pattern
* identifier[strutturaInterna].value from VsMinisteroSaluteIdStruttureInterne (required)

* identifier[partitaIva].system = "http://hl7.it/sid/partitaIva" (exactly)  // pattern
* identifier[partitaIva] ^short = "Partita IVA Organizzazione"

* identifier[codiceFiscale].system = "http://hl7.it/sid/codiceFiscale" (exactly)  // pattern
* identifier[codiceFiscale] ^short = "Codice Fiscale Organizzazione"


