// Alias: $minsan-idStrutture = http://hl7.it/fhir/lab-report/ValueSet/minsan-idStrutture

Profile: OrganizationT2
Parent: OrganizationTelemedicina
Id: OrganizationT2
Description: "Profilo base generico per Organization di tipo 2 (es. ospedale, distretto)"
* ^jurisdiction = urn:iso:std:iso:3166#IT
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains IdentificativoSTS11 0..1 and
    aziendaOspedaliera 0..1 
    //and struttura 0..1
    and partitaIva 0..1 and codiceFiscale 0..1
* identifier[IdentificativoSTS11] ^short = "Identificativo STS11 dell'organizzazione."
* identifier[IdentificativoSTS11] ^definition = "Identificativi di Organization usato per identificare l'Organization identificata da codici STS11, usato in questo contesto in particolare per i poliambulatori."
* identifier[IdentificativoSTS11].system = "https://agenas.gov.it/sid/STS11" (exactly)
* identifier[aziendaOspedaliera] ^sliceName = "aziendaOspedaliera"
* identifier[aziendaOspedaliera] ^short = "Identificativo Azienda Ospedaliera"
* identifier[aziendaOspedaliera].system = "http://hl7.it/sid/hsp11" (exactly)
// * identifier[struttura] ^sliceName = "struttura"
// * identifier[struttura].system = "http://hl7.it/sid/hsp11.struttura" (exactly)
// * identifier[struttura].value from VsMinisteroSaluteIdStrutture (required)
// * identifier[struttura].value ^binding.description = "MDS - ID Strutture Ricovero"
* identifier[partitaIva] ^sliceName = "partitaIva"
* identifier[partitaIva] ^short = "Partita IVA Organizzazione"
* identifier[partitaIva].system = "http://hl7.it/sid/partitaIva" (exactly)

* identifier[codiceFiscale] ^sliceName = "codiceFiscale"
* identifier[codiceFiscale] ^short = "Codice Fiscale Organizzazione"
* identifier[codiceFiscale].system = "http://hl7.it/sid/codiceFiscale" (exactly)

* partOf only Reference(OrganizationT1)

