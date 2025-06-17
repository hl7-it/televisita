// Alias: $loinc = http://loinc.org
// Alias: $sct = http://snomed.info/sct
// Alias: $icd-9-cm = http://hl7.org/fhir/sid/icd-9-cm

// Instance: PianoTelemonitoraggio
// InstanceOf: BundlePianoTM
// Description: "Esempio di Piano di Telemonitoraggio"
// Usage: #example
// * type = #document
// * identifier.system = "http://example.com/fhir/identifiers/bundle"
// * identifier.value = "bundle-12345"
// * timestamp = "2024-06-10T08:00:00Z"
// * entry[0].fullUrl = "Composition/composition123456"
// * entry[=].resource = composition123456
// * entry[+].fullUrl = "PractitionerRole/practitionerrole12345"
// * entry[=].resource = practitionerrole12345
// * entry[+].fullUrl = "Organization/organization123456"
// * entry[=].resource = organization123456
// * entry[+].fullUrl = "CarePlan/careplan123456"
// * entry[=].resource = careplan123456
// * entry[+].fullUrl = "Patient/patient12345"
// * entry[=].resource = patient12345
// * entry[+].fullUrl = "Practitioner/practitioner12345"
// * entry[=].resource = practitioner12345
// * entry[+].fullUrl = "ActivityDefinition/activitydefinition12345"
// * entry[=].resource = activitydefinition12345
// * entry[+].fullUrl = "ObservationDefinition/observationdefinition12345"
// * entry[=].resource = observationdefinition12345
// * entry[+].fullUrl = "Device/device123456"
// * entry[=].resource = device123456
// * entry[+].fullUrl = "Observation/observation123456"
// * entry[=].resource = observation123456

Instance: CompositionRefertoTelevisita
InstanceOf: CompositionRefertoTelevisita
Title: "Esempio completo di referto di televisita"
Description: "Referto televisita con tutte le sezioni richieste dal profilo"
Usage: #example

* status = #final
* type = $loinc#75496-0 "Medical records"
* title = "Referto di Televisita"
* subject = Reference(patient12345)
* encounter = Reference(EncounterTelemedicina)
* date = "2025-06-16T10:30:00+02:00"
* author[0] = Reference(PractitionerRoleTelemedicina)

* section[questitoDiagnostico].code = $loinc#29299-5
* section[questitoDiagnostico].title = "Quesito Diagnostico"
* section[questitoDiagnostico].entry[0] = Reference(Observation/quesito)

* section[InquadramentoClinicoIniziale].code.text = "Inquadramento Clinico Iniziale"
* section[InquadramentoClinicoIniziale].section[anamnesi].code = $loinc#11329-0
* section[InquadramentoClinicoIniziale].section[anamnesi].title = "Anamnesi"
* section[InquadramentoClinicoIniziale].section[anamnesi].entry[0] = Reference(Observation-anamnesi)

* section[InquadramentoClinicoIniziale].section[allergie].code = $loinc#48765-2
* section[InquadramentoClinicoIniziale].section[allergie].title = "Allergie"
* section[InquadramentoClinicoIniziale].section[allergie].entry[0] = Reference(AllergyIntolerance/allergia1)

* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].code = $loinc#10160-0
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].title = "Terapia farmacologica in atto"
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].entry[0] = Reference(MedicationStatement/terapia-corrente)

* section[InquadramentoClinicoIniziale].section[esameObiettivo].code = $loinc#29545-1
* section[InquadramentoClinicoIniziale].section[esameObiettivo].title = "Esame obiettivo"
* section[InquadramentoClinicoIniziale].section[esameObiettivo].entry[0] = Reference(Observation/esame-obiettivo)

* section[precedentiEsamiEseguiti].code = $loinc#30954-2
* section[precedentiEsamiEseguiti].title = "Precedenti esami eseguiti"
* section[precedentiEsamiEseguiti].entry[0] = Reference(Observation/esami-precedenti)

* section[confrontoPrecedentiEsamiEseguiti].code = $loinc#93126-1
* section[confrontoPrecedentiEsamiEseguiti].title = "Confronto con esami precedenti"
* section[confrontoPrecedentiEsamiEseguiti].entry[0] = Reference(Observation/confronto-esami)

* section[referto].code = $loinc#47045-0
* section[referto].title = "Referto"
* section[referto].entry[0] = Reference(Observation/referto-principale)

* section[diagnosi].code = $loinc#29548-5
* section[diagnosi].title = "Diagnosi"
* section[diagnosi].entry[0] = Reference(Observation/diagnosi-principale)

* section[conclusioni].code = $loinc#55110-1
* section[conclusioni].title = "Conclusioni"
* section[conclusioni].entry[0] = Reference(Observation/conclusioni-generali)

* section[suggerimentiPerMedicoPrescrittore].code = $loinc#62385-0
* section[suggerimentiPerMedicoPrescrittore].title = "Suggerimenti per il medico prescrittore"
* section[suggerimentiPerMedicoPrescrittore].entry[0] = Reference(Observation/suggerimenti)

* section[accertamentiControlliConsigliati].code = $loinc#80615-8
* section[accertamentiControlliConsigliati].title = "Accertamenti/controlli consigliati"
* section[accertamentiControlliConsigliati].entry[0] = Reference(Observation/accertamenti-consigliati)

* section[terapiaFarmacologicaConsigliata].code = $loinc#93341-6
* section[terapiaFarmacologicaConsigliata].title = "Terapia farmacologica consigliata"
* section[terapiaFarmacologicaConsigliata].entry[0] = Reference(MedicationRequest/terapia-consigliata)

* section[allegati].code = $loinc#77599-9
* section[allegati].title = "Documenti allegati"
* section[allegati].entry[0] = Reference(DocumentReference/allegato1)

Instance: PatientTelemedicina
InstanceOf: PatientTelemedicina
Usage: #inline
* identifier.system = "http://hl7.it/sid/codiceFiscale"
* identifier.value = "RSSMRA80A01H501Z"
* name[0].family = "Rossi"
* name[0].given[0] = "Mario"

/*
    Rappresenta l'incontro di televisita
*/
Instance: EncounterTelemedicina
InstanceOf: EncounterTelemedicina
Title: "Esempio di Encounter per televisita"
Description: "Esempio di incontro conforme al profilo EncounterTelemedicina"
Usage: #example
* status = #finished
* class = {
    system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
    code = #VR
    display = "Virtual"
  }
* subject = Reference(PatientTelemedicina)
* basedOn = Reference(ServiceRequest/example)
* appointment = Reference(Appointment/example)
* period.start = "2025-06-16T09:00:00+02:00"
* period.end = "2025-06-16T09:45:00+02:00"
// * extension[periodoEffettivo].valuePeriod.start = "2025-06-16T09:05:00+02:00"
// * extension[periodoEffettivo].valuePeriod.end = "2025-06-16T09:40:00+02:00"
// * extension[dataInizioPianificata].valueDateTime = "2025-06-16T09:00:00+02:00"
// * extension[dataFinePianificata].valueDateTime = "2025-06-16T09:45:00+02:00"
* identifier[+].system = "http://agenas.gov.it/sid/codiceNosologico"
* identifier[=].value = "POD.123e4567-e89b-12d3-a456-426614174000"
* priority.coding[0].system = "http://terminology.hl7.org/CodeSystem/appointmentpriority"
* priority.coding[0].code = #routine
* priority.coding[0].display = "Routine"
* participant[0].individual = Reference(Practitioner/example)
* reasonReference[0] = Reference(Condition/example)
* location[0].location = Reference(Location/example)
* serviceProvider = Reference(Organization/example)


Instance: PractitionerRoleTelemedicina
InstanceOf: PractitionerRoleTelemedicina
Usage: #inline
* organization = Reference(organization123456)
* practitioner = Reference(practitioner12345)
* specialty = https://agenas.gov.it/fhir/CodeSystem/csspecialityPractitionerRole#01 "Allergologia"

Instance: organization123456
InstanceOf: OrganizationTelemedicina
Usage: #inline
* name = "FantasticaAzienda"

Instance: patient12345
InstanceOf: PatientTelemedicina
Usage: #inline
* identifier.system = "http://hl7.it/sid/codiceFiscale"
* identifier.value = "RSSMRA80A01H501Z"
* name[0].family = "Rossi"
* name[0].given[0] = "Mario"

Instance: Observation-quesito
InstanceOf: ObservationTelemedicina
Usage: #example
* status = #final
* code = $loinc#29299-5 "Reason for visit"
* subject = Reference(patient12345)
* valueString = "Controllo post-COVID per tosse persistente"

Instance: Observation-anamnesi
InstanceOf: ObservationTelemedicina
Usage: #example
* status = #final
* code = $loinc#11329-0 "History of past illness"
* subject = Reference(patient12345)
* valueString = "Paziente con anamnesi positiva per bronchite cronica, non fumatore."

Instance: AllergyIntolerance-allergia1
InstanceOf: AllergyIntoleranceTelemedicina
Usage: #example
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* code = $sct#91936005 "Allergy to penicillin"
* patient = Reference(patient12345)

Instance: MedicationStatement-terapia-corrente
InstanceOf: MedicationStatement
Usage: #example
* status = #active
* subject = Reference(patient12345)
* medicationCodeableConcept = $sct#372729009 "Salbutamol (medication)"
* effectivePeriod.start = "2025-06-01"

Instance: Observation-esame-obiettivo
InstanceOf: ObservationTelemedicina
Usage: #example
* status = #final
* code = $loinc#29545-1 "Physical findings"
* subject = Reference(patient12345)
* valueString = "Auscultazione toracica: rantoli crepitanti bibasali."

Instance: Observation-esami-precedenti
InstanceOf: ObservationTelemedicina
Usage: #example
* status = #final
* code = $loinc#30954-2 "Relevant diagnostic tests and/or laboratory data"
* subject = Reference(patient12345)
* valueString = "TC torace eseguita il 2025-05-10 con esito negativo per lesioni polmonari evolutive."

Instance: Observation-confronto-esami
InstanceOf: ObservationTelemedicina
Usage: #example
* status = #final
* code = $loinc#93126-1 "Comparison with previous imaging studies"
* subject = Reference(patient12345)
* valueString = "Rispetto al controllo precedente, lieve miglioramento del quadro bronchiolitico."

Instance: Observation-referto-principale
InstanceOf: ObservationTelemedicina
Usage: #example
* status = #final
* code = $loinc#47045-0 "Telemedicine report"
* subject = Reference(patient12345)
* valueString = "Referto di televisita pneumologica: sintomi in miglioramento, non si evidenziano complicanze."

Instance: Observation-diagnosi-principale
InstanceOf: ObservationTelemedicina
Usage: #example
* status = #final
* code = $loinc#29548-5 "Diagnosis"
* subject = Reference(patient12345)
* valueCodeableConcept = $icd9cm#491.1 "Bronchite cronica"

Instance: Observation-conclusioni-generali
InstanceOf: ObservationTelemedicina
Usage: #example
* status = #final
* code = $loinc#55110-1 "Conclusions"
* subject = Reference(patient12345)
* valueString = "Buona risposta al trattamento inalatorio. Monitoraggio consigliato."

Instance: Observation-suggerimenti
InstanceOf: ObservationTelemedicina
Usage: #example
* status = #final
* code = $loinc#62385-0 "Suggestions for referring provider"
* subject = Reference(patient12345)
* valueString = "Valutare spirometria di controllo tra 3 mesi."

Instance: Observation-accertamenti-consigliati
InstanceOf: ObservationTelemedicina
Usage: #example
* status = #final
* code = $loinc#80615-8 "Follow-up studies recommended"
* subject = Reference(patient12345)
* valueString = "Controllo emogasanalisi a domicilio."

Instance: MedicationRequest-terapia-consigliata
InstanceOf: MedicationRequestTelemedicina
Usage: #example
* status = #active
* intent = #order
* subject = Reference(patient12345)
* medicationCodeableConcept = $sct#318903000 "Beclometasone dipropionato (medicinale)"
* authoredOn = "2025-06-16"

Instance: DocumentReference-allegato1
InstanceOf: DocumentReference
Usage: #example
* status = #current
* type = $loinc#77599-9 "Attached documents"
* subject = Reference(patient12345)
* content[0].attachment.contentType = "application/pdf"
* content[0].attachment.url = "https://medico.example.org/documents/tac-polmoni.pdf"
* content[0].attachment.title = "TC Torace 10/05/2025"
* date = "2025-06-16T10:00:00+02:00"
