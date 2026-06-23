ValueSet: VsMinisteroSaluteAsl
Id: minsan-asl
Title: "MDS - ASL"
Description: "MDS - ASL"
* ^version = "0.2.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Italia"
* ^contact[0].name = "HL7 Italia"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://hl7.it"
* ^contact[+].name = "HL7 Italia"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://hl7.it"
* ^jurisdiction = urn:iso:std:iso:3166#IT "Italy"
* include codes from system http://hl7.it/fhir/televisita/CodeSystem/cs-asl


ValueSet: VsMinisteroSaluteIdStrutture
Id: minsan-idStrutture
Title: "Ministero della Salute - ID Strutture Ricovero"
Description: "Ministero della Salute - Identificativi Strutture Ricovero (HSP11)"
* ^experimental = false
//----------------------------------------
* codes from system http://hl7.it/fhir/televisita/CodeSystem/minsan-hsp