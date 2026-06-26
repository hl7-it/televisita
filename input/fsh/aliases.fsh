// ============================================================
// ALIASES CENTRALIZZATI - Referto di Televisita IG
// ============================================================

// --- Terminologie standard HL7 / FHIR ---
Alias: $loinc                              = http://loinc.org
Alias: $sct                               = http://snomed.info/sct
Alias: $icd-9-cm                          = http://hl7.org/fhir/sid/icd-9-cm
Alias: $v2-0203                           = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v3-ActCode                        = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $allergyintolerance-clinical       = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergyintolerance-verification   = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: $mimeType                          = urn:ietf:bcp:13
Alias: $uri                               = urn:ietf:rfc:3986

// --- Estensioni FHIR ---
Alias: $patient-birthPlace                = http://hl7.org/fhir/StructureDefinition/patient-birthPlace|5.2.0
Alias: $iso21090-ADXP-houseNumber         = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber|5.2.0
Alias: $iso21090-ADXP-streetName          = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName|5.2.0
Alias: $iso21090-ADXP-streetNameBase      = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase|5.2.0
Alias: $iso21090-ADXP-streetNameType      = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType|5.2.0
Alias: $iso21090-SC-coding                = http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding|5.2.0

// --- Profili HL7 IT ---
Alias: $Address                           = http://hl7.it/fhir/StructureDefinition/Address
Alias: $Organization_T1                   = http://hl7.it/fhir/StructureDefinition/Organization_T1
Alias: $Organization_T2                   = http://hl7.it/fhir/StructureDefinition/Organization_T2
Alias: $Organization_T3                   = http://hl7.it/fhir/StructureDefinition/Organization_T3
Alias: $ServiceRequest                    = http://hl7.it/fhir/StructureDefinition/ServiceRequestTelevisita
Alias: $serviceRequest_tm                 = http://hl7.it/fhir/StructureDefinition/ServiceRequestTelevisita

// --- Sistemi di identificatori IT ---
Alias: $cf                                = http://hl7.it/sid/codiceFiscale
Alias: $anpr                              = http://hl7.it/sid/anpr

// --- CodeSystem HL7 IT ---
Alias: $istat-dug                         = http://hl7.it/fhir/lab-report/CodeSystem/dug
Alias: $istat-DUG-CS                      = https://www.hl7.it/fhir/terminology/CodeSystem/dug

// --- ValueSet HL7 IT ---
Alias: $tipoCertificatore                 = https://www.hl7.it/fhir/terminology/ValueSet/tipoCertificatore
Alias: $minsan-idStruttureInterne-vs      = https://www.hl7.it/fhir/terminology/ValueSet/minsan-idStruttureInterne
Alias: $uri-idAslRegione                  = https://www.hl7.it/fhir/terminology/ValueSet/uri-idAslRegione
Alias: $uri-idEni                         = https://www.hl7.it/fhir/terminology/ValueSet/VstipoIdentificatore
Alias: $uri-idStp                         = https://www.hl7.it/fhir/terminology/ValueSet/VstipoIdentificatore
Alias: $uri-idRegionali                   = https://www.hl7.it/fhir/terminology/ValueSet/vs-anagrafi-regionali

// --- CodeSystem / ValueSet AGENAS ---
Alias: $specialityPractitionerRole        = https://terminology.agenas.gov.it/ValueSet/specialityPractitionerRole
Alias: $minsan-fls                        = https://terminology.agenas.gov.it/ValueSet/minsan-fls
Alias: $catalogoRegionalePrestazioni      = https://terminology.agenas.gov.it/ValueSet/catalogoRegionalePrestazioni
Alias: $csCatalogoNazionalePrestazioni    = https://terminology.agenas.gov.it/CodeSystem/catalogoNazionalePrestazioni
Alias: $csCatalogoRegionalePrestazioni    = https://terminology.agenas.gov.it/CodeSystem/catalogoRegionalePrestazioni
