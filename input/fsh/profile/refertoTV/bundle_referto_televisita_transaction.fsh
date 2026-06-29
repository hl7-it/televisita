Profile: BundleRefertoDiTelevisitaTransaction
Parent: Bundle
Id: BundleRefertoDiTelevisitaTransaction
Title: "Bundle Referto di Televisita - Transaction"
Description: "Bundle FHIR di tipo transaction per il Referto di Televisita. Le risorse amministrative (Patient, Practitioner, PractitionerRole, Organization) utilizzano PUT con URL basato sull'identificatore per garantire idempotenza; le risorse cliniche (Composition, Encounter, Observation, Procedure, AllergyIntolerance, MedicationStatement, MedicationRequest, ServiceRequest, Appointment, DocumentReference) utilizzano POST."
* ^status = #draft

* type = #transaction (exactly)
* type ^short = "Tipo del Bundle: transaction."
* type ^definition = "Il Bundle è di tipo transaction: ogni entry contiene un elemento request con method e url per l'operazione da eseguire sul server FHIR."

* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.discriminator[1].type = #profile
* entry ^slicing.discriminator[1].path = "resource"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open

* entry contains
    composition 1..1 and
    patient 1..1 and
    serviceRequest 0..1 and
    appointment 0..1 and
    practitionerRole 0..* and
    practitioner 0..* and
    organization 0..* and
    observation 0..* and
    medicationRequest 0..* and
    medicationStatement 0..* and
    allergyIntolerance 0..* and
    encounter 0..* and
    procedure 0..*

// ---- Risorse amministrative (PUT idempotente)
* entry[patient].resource only PatientTelevisita
* entry[patient].request.method = #PUT
* entry[patient] ^short = "Paziente - PUT."
* entry[patient] ^definition = "Risorsa Patient inviata con PUT e identifier-based URL per garantire idempotenza."

* entry[practitioner].resource only PractitionerTelevisita
* entry[practitioner].request.method = #PUT
* entry[practitioner] ^short = "Professionista - PUT."
* entry[practitioner] ^definition = "Risorsa Practitioner inviata con PUT e identifier-based URL."

* entry[organization].resource only OrganizationT1 or OrganizationT2 or OrganizationT3
* entry[organization].request.method = #PUT
* entry[organization] ^short = "Organizzazione - PUT."
* entry[organization] ^definition = "Risorsa Organization (ASL, Presidio, UO) inviata con PUT e identifier-based URL."

* entry[practitionerRole].resource only PractitionerRoleTelevisita
* entry[practitionerRole].request.method = #PUT
* entry[practitionerRole] ^short = "Ruolo del professionista - PUT."
* entry[practitionerRole] ^definition = "Risorsa PractitionerRole inviata con PUT e identifier-based URL."

// ---- Risorse cliniche (POST)
* entry[composition].resource only CompositionRefertoTelevisita
* entry[composition].request.method = #POST
* entry[composition] ^short = "Documento clinico - POST."
* entry[composition] ^definition = "Composition del referto di televisita inviata con POST."

* entry[encounter].resource only EncounterTelevisita
* entry[encounter].request.method = #POST
* entry[encounter] ^short = "Incontro di televisita - POST."

* entry[observation].resource only ObservationTelevisita
* entry[observation].request.method = #POST
* entry[observation] ^short = "Osservazione clinica - POST."

* entry[allergyIntolerance].resource only AllergyIntoleranceTelevisita
* entry[allergyIntolerance].request.method = #POST
* entry[allergyIntolerance] ^short = "Allergia/intolleranza - POST."

* entry[medicationStatement].resource only MedicationStatement
* entry[medicationStatement].request.method = #POST
* entry[medicationStatement] ^short = "Terapia in atto - POST."

* entry[medicationRequest].resource only MedicationRequestTelevisita
* entry[medicationRequest].request.method = #POST
* entry[medicationRequest] ^short = "Prescrizione farmacologica - POST."

* entry[procedure].resource only ProcedureTelevisita
* entry[procedure].request.method = #POST
* entry[procedure] ^short = "Prestazione eseguita - POST."

* entry[serviceRequest].resource only ServiceRequestTelevisita
* entry[serviceRequest].request.method = #POST
* entry[serviceRequest] ^short = "Richiesta di televisita - POST."

* entry[appointment].resource only AppointmentTelevisita
* entry[appointment].request.method = #POST
* entry[appointment] ^short = "Appuntamento - POST."

