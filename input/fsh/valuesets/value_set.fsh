ValueSet: VsTipoCertificatore
Id: tipoCertificatore
Title: "Tipo certificatore"
Description: "Tipo di Entità (organizzazione o persona) che ha certificato un certo record"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* http://hl7.it/fhir/televisita/CodeSystem/it-tipoEntita#gov
* http://hl7.it/fhir/televisita/CodeSystem/it-tipoEntita#mef
* http://hl7.it/fhir/televisita/CodeSystem/it-tipoEntita#regione
* http://hl7.it/fhir/televisita/CodeSystem/it-tipoEntita#comune
* http://hl7.it/fhir/televisita/CodeSystem/it-tipoEntita#as
* http://hl7.it/fhir/televisita/CodeSystem/it-tipoEntita#asl
* http://hl7.it/fhir/televisita/CodeSystem/it-tipoEntita#ric-hsp
* http://hl7.it/fhir/televisita/CodeSystem/it-tipoEntita#ao
* http://hl7.it/fhir/televisita/CodeSystem/it-tipoEntita#dist-san
* $V3RoleCode#subject


ValueSet: VstipoIdentificatore
Id: VstipoIdentificatore
Title: "Tipo identificatore"
Description: "Value set che descrivie i diversi tipi di identificatori. Include i codici della tabella http://terminology.hl7.org/CodeSystem/v2-0203 piu' 'STP' ed 'ENI' "
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "HL7 Italia"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.it/fhir"
* $v2-0203#DL "Driver's license number"
* $v2-0203#PPN "Passport number"
* $v2-0203#BRN "Breed Registry Number"
* $v2-0203#MR "Medical record number"
* $v2-0203#MCN "Microchip Number"
* $v2-0203#EN "Employer number"
* $v2-0203#TAX "Tax ID number"
* $v2-0203#NIIP "National Insurance Payor Identifier (Payor)"
* $v2-0203#PRN "Provider number"
* $v2-0203#MD "Medical License number"
* $v2-0203#DR "Donor Registration Number"
* $v2-0203#ACSN "Accession ID"
* $v2-0203#UDI "Universal Device Identifier"
* $v2-0203#SNO "Serial Number"
* $v2-0203#SB "Social Beneficiary Identifier"
* $v2-0203#PLAC "Placer Identifier"
* $v2-0203#FILL "Filler Identifier"
* include codes from system CsItIdentifierType