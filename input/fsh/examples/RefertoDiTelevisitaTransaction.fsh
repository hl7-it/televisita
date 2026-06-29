// ============================================================
// BUNDLE DI TIPO TRANSACTION - Referto di Televisita
// Stesso scenario clinico del Bundle document:
//   Televisita pneumologica - Maria Rossi - 16/06/2025
// ============================================================

Instance: RefertoDiTelevisitaTransaction
InstanceOf: BundleRefertoDiTelevisitaTransaction
Title: "Referto di Televisita Pneumologica - Maria Rossi (Transaction)"
Description: "Bundle di tipo transaction contenente il referto completo della televisita pneumologica di Maria Rossi del 16/06/2025. Le risorse amministrative (Patient, Practitioner, PractitionerRole, Organization) sono inviate con PUT e identifier-based URL per garantire idempotenza; le risorse cliniche (Composition, Encounter, Observation, Procedure, AllergyIntolerance, MedicationStatement, MedicationRequest, ServiceRequest, Appointment) sono inviate con POST."
Usage: #example

* type = #transaction

// -------------------------------------------------------
// RISORSE AMMINISTRATIVE - PUT (idempotenti)
// -------------------------------------------------------

* entry[0].fullUrl = "http://example/Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82"
* entry[0].resource = PatientTelevisitaExample
* entry[0].request.method = #PUT
* entry[0].request.url = "Patient?identifier=http://hl7.it/sid/codiceFiscale|RSSMRA71E41F205E"

* entry[1].fullUrl = "http://example/Practitioner/2b373c5c-0fbf-4167-875b-47ee7fc5cd5d"
* entry[1].resource = PractitionerTelevisitaExample
* entry[1].request.method = #PUT
* entry[1].request.url = "Practitioner?identifier=http://hl7.it/sid/codiceFiscale|FRRMRC75T10H501K"

* entry[2].fullUrl = "http://example/Organization/asl-roma-1"
* entry[2].resource = AslRoma1
* entry[2].request.method = #PUT
* entry[2].request.url = "Organization?identifier=http://hl7.it/sid/fls|120201"

* entry[3].fullUrl = "http://example/Organization/osp-pertini"
* entry[3].resource = PresidioSandroPertini
* entry[3].request.method = #PUT
* entry[3].request.url = "Organization?identifier=http://hl7.it/sid/hsp|HSP00123"

* entry[4].fullUrl = "http://example/Organization/uo-cardiologia-pertini"
* entry[4].resource = UOCardiologiaPertini
* entry[4].request.method = #PUT
* entry[4].request.url = "Organization?identifier=http://hl7.it/sid/hsp|UO12345"

* entry[5].fullUrl = "http://example/PractitionerRole/e446e848-2bd4-423a-b2f8-5d25687e2f42"
* entry[5].resource = PractitionerRoleTelevisitaExample
* entry[5].request.method = #PUT
* entry[5].request.url = "PractitionerRole?practitioner.identifier=http://hl7.it/sid/codiceFiscale|FRRMRC75T10H501K"

// -------------------------------------------------------
// RISORSE CLINICHE - POST
// -------------------------------------------------------

* entry[6].fullUrl = "http://example/Composition/aa011502-6ad2-430b-a439-01dddc36fd4e"
* entry[6].resource = CompositionRefertoTelevisitaExample
* entry[6].request.method = #POST
* entry[6].request.url = "Composition"

* entry[7].fullUrl = "http://example/Encounter/a2aaf911-51e7-4e38-a7ca-2817c0fcc6d2"
* entry[7].resource = EncounterTelevisitaExample
* entry[7].request.method = #POST
* entry[7].request.url = "Encounter"

* entry[8].fullUrl = "http://example/ServiceRequest/d3f1a9b0-8c3d-4e8f-b2e2-59d8b02a6fdc"
* entry[8].resource = ServiceRequestTelemedicinaExample
* entry[8].request.method = #POST
* entry[8].request.url = "ServiceRequest"

* entry[9].fullUrl = "http://example/Appointment/9c7e5f13-47bd-4a0a-a6bb-c9e39fd3a908"
* entry[9].resource = AppointmentTelevisitaExample
* entry[9].request.method = #POST
* entry[9].request.url = "Appointment"

* entry[10].fullUrl = "http://example/AllergyIntolerance/1360bd6a-3855-48d3-aa33-96a9d961bb94"
* entry[10].resource = AllergyIntolerance-allergia1
* entry[10].request.method = #POST
* entry[10].request.url = "AllergyIntolerance"

* entry[11].fullUrl = "http://example/MedicationStatement/e62c9f1d-9c0b-4433-853b-06ec5074f19a"
* entry[11].resource = MedicationStatement-terapia-corrente
* entry[11].request.method = #POST
* entry[11].request.url = "MedicationStatement"

* entry[12].fullUrl = "http://example/MedicationRequest/9282eb8d-b153-451a-bd0d-437efd13b45f"
* entry[12].resource = MedicationRequest-terapia-consigliata
* entry[12].request.method = #POST
* entry[12].request.url = "MedicationRequest"

* entry[13].fullUrl = "http://example/Procedure/b81d2c4e-5a9f-4c97-90fb-2a3b726b123f"
* entry[13].resource = ProcedureTelevisitaExample
* entry[13].request.method = #POST
* entry[13].request.url = "Procedure"

* entry[14].fullUrl = "http://example/Observation/7cbbe77d-dcdb-409b-a215-6361ad7873d5"
* entry[14].resource = Observation-quesito
* entry[14].request.method = #POST
* entry[14].request.url = "Observation"

* entry[15].fullUrl = "http://example/Observation/84f911ee-b09d-4325-a3f3-a973a0c5ad8f"
* entry[15].resource = Observation-anamnesi
* entry[15].request.method = #POST
* entry[15].request.url = "Observation"

* entry[16].fullUrl = "http://example/Observation/c2a2b1ea-9d7e-41b9-83a5-cc2e71c0b865"
* entry[16].resource = Observation-esame-obiettivo
* entry[16].request.method = #POST
* entry[16].request.url = "Observation"

* entry[17].fullUrl = "http://example/Observation/9dfdf0c9-a837-42d5-987c-6170c75cc476"
* entry[17].resource = Observation-esami-precedenti
* entry[17].request.method = #POST
* entry[17].request.url = "Observation"

* entry[18].fullUrl = "http://example/Observation/ecc5c95f-a1c0-483c-b48e-5fd84762c393"
* entry[18].resource = Observation-confronto-esami
* entry[18].request.method = #POST
* entry[18].request.url = "Observation"

* entry[19].fullUrl = "http://example/Observation/a465cf01-05e6-4f38-8f6a-b5d6c4168c94"
* entry[19].resource = Observation-referto-principale
* entry[19].request.method = #POST
* entry[19].request.url = "Observation"

* entry[20].fullUrl = "http://example/Observation/1729dcef-ac19-434b-82e7-b6e6e51e74b3"
* entry[20].resource = Observation-diagnosi-principale
* entry[20].request.method = #POST
* entry[20].request.url = "Observation"

* entry[21].fullUrl = "http://example/Observation/1611ed98-7577-48ab-9587-7ab4fc96e191"
* entry[21].resource = Observation-conclusioni-generali
* entry[21].request.method = #POST
* entry[21].request.url = "Observation"

* entry[22].fullUrl = "http://example/Observation/2054e65c-2012-4286-aac7-ce2f23e8be31"
* entry[22].resource = Observation-suggerimenti
* entry[22].request.method = #POST
* entry[22].request.url = "Observation"

* entry[23].fullUrl = "http://example/Observation/1b401b53-f564-4730-bb13-45d5620596f0"
* entry[23].resource = Observation-accertamenti-consigliati
* entry[23].request.method = #POST
* entry[23].request.url = "Observation"
