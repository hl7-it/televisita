Alias: $sct = http://snomed.info/sct
Alias: $icd-9-cm = http://hl7.org/fhir/sid/icd-9-cm
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
// Alias: $icd-9-cm = http://hl7.org/fhir/sid/icd-9-cm
Alias: $mimeType = urn:ietf:bcp:13


Instance: RefertoDiTelevisita
InstanceOf: BundleRefertodiTelevisita
Description: "Esempio di Referto di Televisita aggiornato con referto televisita"
Usage: #example
* type = #document
* identifier.system = "urn:ietf:rfc:39861"
* identifier.value = "urn:uuid:bfcf00e2-e2bb-4a7d-adaa-3de9d419d27e"
* timestamp = "2023-02-25T14:30:00+01:00"
* entry[0].fullUrl = "http://example/Composition/aa011502-6ad2-430b-a439-01dddc36fd4e"
* entry[0].resource = CompositionRefertoTelevisitaExample

* entry[1].fullUrl = "http://example/Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82"
* entry[1].resource = PatientTelemedicinaExample

* entry[2].fullUrl = "http://example/PractitionerRole/e446e848-2bd4-423a-b2f8-5d25687e2f42"
* entry[2].resource = PractitionerRoleTelemedicinaExample

* entry[3].fullUrl = "http://example/Organization/e446e848-2bd4-423a-b2f8-5d25687e2f4b"
* entry[3].resource = organization123456

* entry[4].fullUrl = "http://example/Practitioner/2b373c5c-0fbf-4167-875b-47ee7fc5cd5d"
* entry[4].resource = PractitionerTelemedicinaExample

* entry[5].fullUrl = "http://example/Encounter/a2aaf911-51e7-4e38-a7ca-2817c0fcc6d2"
* entry[5].resource = EncounterTelemedicinaExample

* entry[6].fullUrl = "http://example/Observation/7cbbe77d-dcdb-409b-a215-6361ad7873d5"
* entry[6].resource = Observation-quesito

* entry[7].fullUrl = "http://example/Observation/84f911ee-b09d-4325-a3f3-a973a0c5ad8f"
* entry[7].resource = Observation-anamnesi

* entry[8].fullUrl = "http://example/AllergyIntolerance/1360bd6a-3855-48d3-aa33-96a9d961bb94"
* entry[8].resource = AllergyIntolerance-allergia1

* entry[9].fullUrl = "http://example/MedicationStatement/e62c9f1d-9c0b-4433-853b-06ec5074f19a"
* entry[9].resource = MedicationStatement-terapia-corrente

* entry[10].fullUrl = "http://example/Observation/c2a2b1ea-9d7e-41b9-83a5-cc2e71c0b865"
* entry[10].resource = Observation-esame-obiettivo

* entry[11].fullUrl = "http://example/Observation/9dfdf0c9-a837-42d5-987c-6170c75cc476"
* entry[11].resource = Observation-esami-precedenti

* entry[12].fullUrl = "http://example/Observation/ecc5c95f-a1c0-483c-b48e-5fd84762c393"
* entry[12].resource = Observation-confronto-esami

* entry[13].fullUrl = "http://example/Observation/a465cf01-05e6-4f38-8f6a-b5d6c4168c94"
* entry[13].resource = Observation-referto-principale

* entry[14].fullUrl = "http://example/Observation/1729dcef-ac19-434b-82e7-b6e6e51e74b3"
* entry[14].resource = Observation-diagnosi-principale

* entry[15].fullUrl = "http://example/Observation/1611ed98-7577-48ab-9587-7ab4fc96e191"
* entry[15].resource = Observation-conclusioni-generali

* entry[16].fullUrl = "http://example/Observation/2054e65c-2012-4286-aac7-ce2f23e8be31"
* entry[16].resource = Observation-suggerimenti

* entry[17].fullUrl = "http://example/Observation/1b401b53-f564-4730-bb13-45d5620596f0"
* entry[17].resource = Observation-accertamenti-consigliati

* entry[18].fullUrl = "http://example/MedicationRequest/9282eb8d-b153-451a-bd0d-437efd13b45f"
* entry[18].resource = MedicationRequest-terapia-consigliata

* entry[19].fullUrl = "http://example/DocumentReference/4f6c71e1-cc6e-4428-ae9b-0118c0a928cb"
* entry[19].resource = DocumentReference-allegato1


Instance: PatientTelemedicinaExample
InstanceOf: PatientTelemedicina
Description: "Esempio di paziente nel contesto della televisita"
Usage: #example
* id = "2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82"
* identifier.system = "http://hl7.it/sid/codiceFiscale"
* identifier.value = "RSSMRA80A01H501Z"
* name[0].family = "Rossi"
* name[0].given[0] = "Mario"


Instance: CompositionRefertoTelevisitaExample
InstanceOf: CompositionRefertoTelevisita
Title: "Esempio completo di referto di televisita"
Description: "Referto televisita con tutte le sezioni richieste dal profilo"
Usage: #example
* status = #final
* id = "aa011502-6ad2-430b-a439-01dddc36fd4e"
* type = $loinc#75496-0 "Telehealth Note"
* title = "Referto di Televisita"
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* encounter = Reference(EncounterTelemedicinaExample)
* date = "2025-06-16T10:30:00+02:00"
* author[0] = Reference(PractitionerRole/e446e848-2bd4-423a-b2f8-5d25687e2f42)
* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].time = "2023-02-25T12:45:00+01:00"
* attester[legalAuthenticator].party = Reference(PractitionerRole/e446e848-2bd4-423a-b2f8-5d25687e2f42)
* section[questitoDiagnostico].code = $loinc#29299-5
* section[questitoDiagnostico].title = "Quesito Diagnostico"
* section[questitoDiagnostico].entry[0] = Reference(Observation/7cbbe77d-dcdb-409b-a215-6361ad7873d5)
* section[InquadramentoClinicoIniziale].title = "Inquadramento Clinico Iniziale"
* section[InquadramentoClinicoIniziale].section[anamnesi].code = $loinc#11329-0
* section[InquadramentoClinicoIniziale].section[anamnesi].title = "Anamnesi"
* section[InquadramentoClinicoIniziale].section[anamnesi].entry = Reference(Observation/84f911ee-b09d-4325-a3f3-a973a0c5ad8f)
* section[InquadramentoClinicoIniziale].section[allergie].code = $loinc#48765-2
* section[InquadramentoClinicoIniziale].section[allergie].title = "Allergie"
* section[InquadramentoClinicoIniziale].section[allergie].entry = Reference(AllergyIntolerance/1360bd6a-3855-48d3-aa33-96a9d961bb94)
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].code = $loinc#10160-0
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].title = "Terapia farmacologica in atto"
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].entry = Reference(MedicationStatement/e62c9f1d-9c0b-4433-853b-06ec5074f19a)
* section[InquadramentoClinicoIniziale].section[esameObiettivo].code = $loinc#29545-1
* section[InquadramentoClinicoIniziale].section[esameObiettivo].title = "Esame obiettivo"
* section[InquadramentoClinicoIniziale].section[esameObiettivo].entry = Reference(Observation/c2a2b1ea-9d7e-41b9-83a5-cc2e71c0b865)
* section[precedentiEsamiEseguiti].code = $loinc#30954-2
* section[precedentiEsamiEseguiti].title = "Precedenti esami eseguiti"
* section[precedentiEsamiEseguiti].entry[0] = Reference(Observation/9dfdf0c9-a837-42d5-987c-6170c75cc476)
* section[confrontoPrecedentiEsamiEseguiti].code = $loinc#93126-1
* section[confrontoPrecedentiEsamiEseguiti].title = "Confronto con esami precedenti"
* section[confrontoPrecedentiEsamiEseguiti].entry[0] = Reference(Observation/ecc5c95f-a1c0-483c-b48e-5fd84762c393)
* section[referto].code = $loinc#47045-0
* section[referto].title = "Referto"
* section[referto].entry[0] = Reference(Observation/a465cf01-05e6-4f38-8f6a-b5d6c4168c94)
* section[diagnosi].code = $loinc#29548-5
* section[diagnosi].title = "Diagnosi"
* section[diagnosi].entry[0] = Reference(Observation/1729dcef-ac19-434b-82e7-b6e6e51e74b3)
* section[conclusioni].code = $loinc#55110-1
* section[conclusioni].title = "Conclusioni"
* section[conclusioni].entry[0] = Reference(Observation/1611ed98-7577-48ab-9587-7ab4fc96e191)
* section[suggerimentiPerMedicoPrescrittore].code = $loinc#62385-0
* section[suggerimentiPerMedicoPrescrittore].title = "Suggerimenti per il medico prescrittore"
* section[suggerimentiPerMedicoPrescrittore].entry[0] = Reference(Observation/2054e65c-2012-4286-aac7-ce2f23e8be31)
* section[accertamentiControlliConsigliati].code = $loinc#80615-8
* section[accertamentiControlliConsigliati].title = "Accertamenti/controlli consigliati"
* section[accertamentiControlliConsigliati].entry[0] = Reference(Observation/1b401b53-f564-4730-bb13-45d5620596f0)
* section[terapiaFarmacologicaConsigliata].code = $loinc#93341-6
* section[terapiaFarmacologicaConsigliata].title = "Terapia farmacologica consigliata"
* section[terapiaFarmacologicaConsigliata].entry[0] = Reference(MedicationRequest-terapia-consigliata)
* section[allegati].code = $loinc#77599-9
* section[allegati].title = "Documenti allegati"
* section[allegati].entry[0] = Reference(DocumentReference/4f6c71e1-cc6e-4428-ae9b-0118c0a928cb)


Instance: PractitionerTelemedicinaExample
InstanceOf: PractitionerTelemedicina
Description: "Esempio di practitioner nel contesto della televisita"
Usage: #example
* id = "2b373c5c-0fbf-4167-875b-47ee7fc5cd5d"
* name.given = "John"
* name.family = "Doe"


Instance: EncounterTelemedicinaExample
InstanceOf: EncounterTelemedicina
Title: "Esempio di Encounter per televisita"
Description: "Esempio di incontro conforme al profilo EncounterTelemedicinaExample"
Usage: #example
* id = "a2aaf911-51e7-4e38-a7ca-2817c0fcc6d2"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode|3.0.0#VR "Virtual"
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
// * basedOn = Reference(ServiceRequest/example)
// * appointment = Reference(Appointment/example)
* period.start = "2025-06-16T09:00:00+02:00"
* period.end = "2025-06-16T09:45:00+02:00"
* identifier[+].system = "http://agenas.gov.it/sid/codiceNosologico"
* identifier[=].value = "POD.123e4567-e89b-12d3-a456-426614174000"
* priority.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActPriority"
* priority.coding[0].code = #R
* priority.coding[0].display = "routine"
* participant[0].individual = Reference(PractitionerTelemedicinaExample)
// * reasonReference[0] = Reference(Condition/example)
// * location[0].location = Reference(Location/example)
// * serviceProvider = Reference(Organization/example)


Instance: PractitionerRoleTelemedicinaExample
InstanceOf: PractitionerRoleTelemedicina
Description: "Esempio di practitionerRole nel contesto della televisita"
Usage: #example
* organization = Reference(organization123456)
* practitioner = Reference(PractitionerTelemedicinaExample)
* specialty = CodeSystem_specialita_PractitionerRole#01 "Allergologia"
* id = "e446e848-2bd4-423a-b2f8-5d25687e2f42"

Instance: organization123456
InstanceOf: OrganizationTelemedicina
Description: "Esempio di organization nel contesto della televisita"
Usage: #example
* name = "FantasticaAzienda"
* id = "e446e848-2bd4-423a-b2f8-5d25687e2f4b"


Instance: Observation-quesito
InstanceOf: ObservationTelemedicina
Description: "Esempio di quesito diagnostico nel contesto della televisita"
Usage: #example
* id = "7cbbe77d-dcdb-409b-a215-6361ad7873d5"
* status = #final
* code = https://agenas.gov.it/fhir/CodeSystem/diagnosi-icd9cm#786.2 "TOSSE"
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* valueString = "Controllo post-COVID per tosse persistente"
* performer = Reference(PractitionerTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"

Instance: Observation-anamnesi
InstanceOf: ObservationTelemedicina
Description: "Esempio di anamnesi nel contesto della televisita"
Usage: #example
* id = "84f911ee-b09d-4325-a3f3-a973a0c5ad8f"
* status = #final
* code = $loinc#11329-0
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* valueString = "Paziente con anamnesi positiva per bronchite cronica, non fumatore."
* performer = Reference(PractitionerTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"


Instance: AllergyIntolerance-allergia1
InstanceOf: AllergyIntoleranceTelemedicina
Description: "Esempio di allergyIntolerance nel contesto della televisita"
Usage: #example
* id = "1360bd6a-3855-48d3-aa33-96a9d961bb94"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* code = $sct#91936005 "Allergy to penicillin"
* patient = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)


Instance: MedicationStatement-terapia-corrente
InstanceOf: MedicationStatement
Description: "Esempio di medicationStatement nel contesto della televisita"
Usage: #example
* status = #active
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* medicationCodeableConcept = $sct#372729009 "Acyclovir"
* effectivePeriod.start = "2025-06-01"
* id = "e62c9f1d-9c0b-4433-853b-06ec5074f19a"


Instance: Observation-esame-obiettivo
InstanceOf: ObservationTelemedicina
Description: "Esempio di esame obiettivo nel contesto della televisita"
Usage: #example
* status = #final
* code = $loinc#29545-1
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* valueString = "Durante la conversazione si rileva tosse secca intermittente."
* id = "c2a2b1ea-9d7e-41b9-83a5-cc2e71c0b865"
* performer = Reference(PractitionerTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"


Instance: Observation-esami-precedenti
InstanceOf: ObservationTelemedicina
Description: "Esempio di prcedenti esami eseguiti nel contesto della televisita"
Usage: #example
* status = #final
* category[0] = $loinc#30954-2 "Relevant diagnostic tests/laboratory data Narrative"
* code = $loinc#24606-6 "MG Breast Screening"
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* effectiveDateTime = "2025-05-10"
* method.coding[0].system = "http://snomed.info/sct"
* method.coding[0].code = #713548006
* method.coding[0].display = "Low dose computed tomography of thorax"
* valueString = "TC torace eseguita il 10/05/2025. Referto: negativa per lesioni polmonari evolutive."
* id = "9dfdf0c9-a837-42d5-987c-6170c75cc476"
* performer = Reference(PractitionerTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"


Instance: Observation-confronto-esami
InstanceOf: ObservationTelemedicina
Description: "Esempio di confronto con precedenti esame eseguiti nel contesto della televisita"
Usage: #example
* status = #final
* code = $loinc#93126-1
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* valueString = "Rispetto al controllo precedente, lieve miglioramento del quadro bronchiolitico."
* id = "ecc5c95f-a1c0-483c-b48e-5fd84762c393"
* performer = Reference(PractitionerTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"


Instance: Observation-referto-principale
InstanceOf: ObservationTelemedicina
Description: "Esempio di referto nel contesto della televisita"
Usage: #example
* status = #final
* code = $loinc#47045-0
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* valueString = "Referto di televisita pneumologica: sintomi in miglioramento, non si evidenziano complicanze."
* id = "a465cf01-05e6-4f38-8f6a-b5d6c4168c94"
* performer = Reference(PractitionerTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"


Instance: Observation-diagnosi-principale
InstanceOf: ObservationTelemedicina
Description: "Esempio di esame diagnosi nel contesto della televisita"
Usage: #example
* status = #final
* code = https://agenas.gov.it/fhir/CodeSystem/diagnosi-icd9cm#491.1 "BRONCHITE CRONICA MUCOPURULENTA"
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* valueString = "Bronchite cronica in fase stabile, con sintomatologia respiratoria lieve (tosse secca persistente), assenza di segni di riacutizzazione e buona risposta alla terapia inalatoria in corso."
* id = "1729dcef-ac19-434b-82e7-b6e6e51e74b3"
* performer = Reference(PractitionerTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"


Instance: Observation-conclusioni-generali
InstanceOf: ObservationTelemedicina
Description: "Esempio di conclusioni generali nel contesto della televisita"
Usage: #example
* status = #final
* code = $loinc#55110-1
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* valueString = "Buona risposta al trattamento inalatorio. Monitoraggio consigliato."
* id = "1611ed98-7577-48ab-9587-7ab4fc96e191"
* performer = Reference(PractitionerTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"


Instance: Observation-suggerimenti
InstanceOf: ObservationTelemedicina
Description: "Esempio di suggerimenti nel contesto della televisita"
Usage: #example
* status = #final
* code = $loinc#62385-0
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* valueString = "Valutare spirometria di controllo tra 3 mesi."
* id = "2054e65c-2012-4286-aac7-ce2f23e8be31"
* performer = Reference(PractitionerTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"


Instance: Observation-accertamenti-consigliati
InstanceOf: ObservationTelemedicina
Description: "Esempio di accertamenti consigliati nel contesto della televisita"
Usage: #example
* status = #final
* code = $loinc#80615-8
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* valueString = "Controllo emogasanalisi a domicilio."
* id = "1b401b53-f564-4730-bb13-45d5620596f0"
* performer = Reference(PractitionerTelemedicinaExample)
* effectiveDateTime = "2025-06-16T10:30:00+02:00"


Instance: MedicationRequest-terapia-consigliata
InstanceOf: MedicationRequestTelemedicina
Description: "Esempio di terapia consigliata nel contesto della televisita"
Usage: #example
* status = #active
* intent = #proposal
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* medicationCodeableConcept = https://www.hl7.it/fhir/terminology/CodeSystem/aifa-aic#C01BD01 "Amiodarone" 
* authoredOn = "2025-06-16"
* requester = Reference(PractitionerTelemedicinaExample)
* id = "9282eb8d-b153-451a-bd0d-437efd13b45f"


Instance: DocumentReference-allegato1
InstanceOf: DocumentReference
Description: "Esempio di allegsti nel contesto della televisita"
Usage: #example
* status = #current
* type = $loinc#77599-9 "Additional documentation"
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* content[0].attachment.title = "TC Torace 10/05/2025"
* date = "2025-06-16T10:00:00+02:00"
* id = "4f6c71e1-cc6e-4428-ae9b-0118c0a928cb"
* content[0].attachment.contentType = $mimeType#"application/pdf"


Instance: ProcedureTelemedicinaExample
InstanceOf: ProcedureTelemedicina
Title: "Esempio di Televisita Cardiologica"
Description: "Esempio di istanza ProcedureTelemedicina per una televisita cardiologica."
Usage: #example
* status = #completed
* category = http://snomed.info/sct#409063005 "Counselling"
* code = CodesystemCatalogoNazionalePrestazioni#89.17.3 "MONITORAGGIO CARDIORESPIRATORIO NOTTURNO COMPLETOPer studio apnee"
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* performedPeriod.start = "2025-07-08T10:00:00+01:00"
* performedPeriod.end = "2025-07-08T10:30:00+01:00"
* recorder = Reference(PractitionerTelemedicinaExample)
* performer[+].actor = Reference(PractitionerTelemedicinaExample)
* performer[=].function = http://snomed.info/sct#17561000 "Cardiologist"
* outcome.text = "Il paziente ha riportato miglioramenti. Non si segnalano criticità. Terapia invariata."
* note[+].text = "Televisita eseguita tramite piattaforma XTelemed."


Instance: AppointmentTelemedicinaExample
InstanceOf: AppointmentTelemedicina
Title: "Appuntamento Televisita Cardiologica"
Description: "Esempio di appuntamento per televisita cardiologica del paziente Mario Rossi"
Usage: #example
* status = #booked
* identifier.value = "TV-20250709-001"
* created = "2025-07-01T09:00:00+01:00"
* start = "2025-07-09T10:00:00+01:00"
* end = "2025-07-09T10:30:00+01:00"
* basedOn = Reference(ServiceRequestTelemedicinaExample)
* serviceCategory = http://terminology.hl7.org/CodeSystem/service-category|1.1.1#Counselling "Counselling"
* reasonCode[+] = http://snomed.info/sct#129265001 "Evaluation - action (qualifier value)"
* reasonCode[=].text = "Televisita cardiologica per controllo post-operatorio"
* participant[0].actor = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* participant[0].status = #accepted
* participant[1].actor = Reference(PractitionerRoleTelemedicinaExample)
* participant[1].status = #accepted


Instance: ServiceRequestTelemedicinaExample
InstanceOf: ServiceRequestTelemedicina
Title: "Richiesta Televisita Cardiologica - Mario Rossi"
Description: "Esempio di ServiceRequest per una televisita cardiologica, con NRE e branca di prestazione."
Usage: #example
* status = #active
* intent = #order
* identifier.value = "AAZ123456789"
* requisition.value = "REQ-20250709-0001"
// * requisition.type.coding[tipoRicetta].system = "https://terminology.agenas.gov.it/CodeSystem/tipoRicetta"
// * requisition.type.coding[tipoRicetta].code = #RR
* category[brancaPrestazione] = https://agenas.gov.it/fhir/CodeSystem/branca-prestazione#02 "Cardiologia"
* priority = #routine
* subject = Reference(Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82)
* subject.display = "Mario Rossi"
* encounter = Reference(EncounterTelemedicinaExample)
* encounter.display = "Televisita 09/07/2025"
* occurrenceDateTime = "2025-07-09T10:00:00+01:00"
* authoredOn = "2025-07-01T09:15:00+01:00"
* requester = Reference(PractitionerRoleTelemedicinaExample)
//* performer = Reference(Organization/ASLRoma1)
* reasonCode = http://snomed.info/sct#2153008 "Cardiac catheterization education"
* note[+].text = "Prestazione da eseguire in modalità remota tramite piattaforma XTelemed"
