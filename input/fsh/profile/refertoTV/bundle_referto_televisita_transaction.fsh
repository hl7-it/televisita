Profile: BundleRefertoDiTelevisitaTransaction
Parent: Bundle
Id: BundleRefertoDiTelevisitaTransaction
Title: "Bundle Referto di Televisita - Transaction"
Description: "Bundle FHIR di tipo transaction contenente il referto di televisita con tutte le risorse correlate. Le risorse amministrative usano PUT con identificatore, quelle cliniche POST."
* ^status = #draft
* type = #transaction (exactly)
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open

* entry contains
    composition 1..1 and
    patient 1..1 and
    practitioner 0..1 and
    organization 0..* and
    // organizationT2 0..* and
    // organizationT3 0..* and
    practitionerRole 0..1 and
    encounter 0..1 and
    serviceRequest 0..1 and
    appointment 0..1 and
    observation 0..* and
    condition 0..* and
    medicationRequest 0..* and
    medicationStatement 0..* and
    allergyIntolerance 0..* and
    familyMemberHistory 0..* and
    procedure 0..*

// Risorse amministrative (PUT)
* entry[patient].resource only PatientTelevisita
* entry[patient].request.method = #PUT

* entry[practitioner].resource only PractitionerTelevisita
* entry[practitioner].request.method = #PUT

* entry[organization].resource only OrganizationT1 or OrganizationT2 or OrganizationT3
* entry[organization].request.method = #PUT

// * entry[organizationT2].resource only OrganizationT2
// * entry[organizationT2].request.method = #PUT

// * entry[organizationT3].resource only OrganizationT3
// * entry[organizationT3].request.method = #PUT

* entry[practitionerRole].resource only PractitionerRoleTelevisita
* entry[practitionerRole].request.method = #PUT

// Risorse cliniche (POST)
* entry[composition].resource only CompositionRefertoTelevisita
* entry[composition].request.method = #POST

* entry[encounter].resource only EncounterTelevisita
* entry[encounter].request.method = #POST

* entry[serviceRequest].resource only ServiceRequestTelevisita
* entry[serviceRequest].request.method = #POST

* entry[appointment].resource only AppointmentTelevisita
* entry[appointment].request.method = #POST

* entry[observation].resource only ObservationTelevisita
* entry[observation].request.method = #POST

* entry[condition].resource only Condition
* entry[condition].request.method = #POST

* entry[medicationRequest].resource only MedicationRequestTelevisita
* entry[medicationRequest].request.method = #POST

* entry[medicationStatement].resource only MedicationStatement
* entry[medicationStatement].request.method = #POST

* entry[allergyIntolerance].resource only AllergyIntoleranceTelevisita
* entry[allergyIntolerance].request.method = #POST

* entry[familyMemberHistory].resource only FamilyMemberHistory
* entry[familyMemberHistory].request.method = #POST

* entry[procedure].resource only ProcedureTelevisita
* entry[procedure].request.method = #POST
