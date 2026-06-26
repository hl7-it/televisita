Profile: BundleRefertodiTelevisita
Parent: Bundle
Id: BundleRefertodiTelevisita
Title: "Bundle Referto di televisita"
Description: "Bundle FHIR utilizzato per rappresentare il referto di televisita. Contiene la Composition e tutte le risorse cliniche, amministrative e organizzative necessarie alla completa rappresentazione della prestazione erogata in telemedicina."
* ^status = #draft

* type from VsBundleTipoTelevisita (required)
* type ^short = "Tipologia del Bundle."
* type ^definition = "Indica la tipologia del Bundle. Nel contesto del referto di televisita identifica un Bundle di tipo document."

* entry ^short = "Risorse che compongono il documento clinico."
* entry ^definition = "Collezione delle risorse FHIR che costituiscono il referto di televisita. La prima entry contiene la Composition, seguita dalle risorse cliniche, amministrative e organizzative referenziate nel documento."

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
    condition 0..* and
    medicationRequest 0..* and
    medicationStatement 0..* and
    allergyIntolerance 0..* and
    familyMemberHistory 0..* and
    encounter 0..* and
    procedure 0..*

* entry[composition] ^short = "Documento clinico della televisita."
* entry[composition] ^definition = "Composition che rappresenta il referto di televisita e costituisce la risorsa principale del Bundle document."
* entry[composition].resource only CompositionRefertoTelevisita

* entry[patient] ^short = "Assistito."
* entry[patient] ^definition = "Risorsa Patient che identifica l'assistito a cui si riferisce il referto di televisita."
* entry[patient].resource only PatientTelevisita

* entry[serviceRequest] ^short = "Richiesta o prescrizione della televisita."
* entry[serviceRequest] ^definition = "Richiesta o prescrizione specialistica che ha originato l'erogazione della televisita, ove disponibile."
* entry[serviceRequest].resource only ServiceRequestTelevisita

* entry[appointment] ^short = "Appuntamento della televisita."
* entry[appointment] ^definition = "Informazioni relative alla prenotazione o pianificazione dell'appuntamento per l'erogazione della televisita."
* entry[appointment].resource only Appointment

* entry[practitionerRole] ^short = "Ruoli dei professionisti sanitari."
* entry[practitionerRole] ^definition = "Ruoli professionali dei soggetti coinvolti nella richiesta, erogazione, refertazione o validazione della televisita."
* entry[practitionerRole].resource only PractitionerRoleTelevisita

* entry[practitioner] ^short = "Professionisti sanitari."
* entry[practitioner] ^definition = "Professionisti sanitari coinvolti nel processo di televisita, quali medico richiedente, medico erogatore o medico refertante."
* entry[practitioner].resource only PractitionerTelevisita

* entry[organization] ^short = "Organizzazioni sanitarie."
* entry[organization] ^definition = "Organizzazioni coinvolte nella richiesta, erogazione, presa in carico o refertazione della televisita."
* entry[organization].resource only OrganizationT1 or OrganizationT2 or OrganizationT3

* entry[observation] ^short = "Osservazioni cliniche."
* entry[observation] ^definition = "Osservazioni cliniche rilevate o documentate nell'ambito della televisita, comprese anamnesi, esame obiettivo, valutazioni narrative e altre informazioni cliniche."
* entry[observation].resource only ObservationTelevisita

* entry[condition] ^short = "Diagnosi e condizioni cliniche."
* entry[condition] ^definition = "Condizioni cliniche, problemi o diagnosi formulate, confermate o considerate nel corso della televisita."
* entry[condition].resource only Condition

* entry[medicationRequest] ^short = "Prescrizioni farmacologiche."
* entry[medicationRequest] ^definition = "Prescrizioni o raccomandazioni farmacologiche formulate come esito della televisita."
* entry[medicationRequest].resource only MedicationRequestTelevisita

* entry[medicationStatement] ^short = "Terapia farmacologica in corso."
* entry[medicationStatement] ^definition = "Informazioni sui farmaci assunti dall'assistito al momento della televisita."
* entry[medicationStatement].resource only MedicationStatement

* entry[allergyIntolerance] ^short = "Allergie e intolleranze."
* entry[allergyIntolerance] ^definition = "Allergie, intolleranze o reazioni avverse rilevanti ai fini della valutazione clinica effettuata durante la televisita."
* entry[allergyIntolerance].resource only AllergyIntoleranceTelevisita

* entry[familyMemberHistory] ^short = "Anamnesi familiare."
* entry[familyMemberHistory] ^definition = "Informazioni relative alla storia clinica familiare dell'assistito, ove rilevanti per la valutazione svolta in televisita."
* entry[familyMemberHistory].resource only FamilyMemberHistory

* entry[encounter] ^short = "Incontro di televisita."
* entry[encounter] ^definition = "Encounter che rappresenta il contesto assistenziale e l'effettiva erogazione della televisita."
* entry[encounter].resource only EncounterTelevisita

* entry[procedure] ^short = "Prestazioni eseguite."
* entry[procedure] ^definition = "Prestazioni sanitarie effettuate o documentate nell'ambito della televisita."
* entry[procedure].resource only ProcedureTelevisita