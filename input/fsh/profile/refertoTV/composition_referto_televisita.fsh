Alias: $loinc = http://loinc.org

Profile: CompositionRefertoTelevisita
Parent: Composition
Id: CompositionRefertoTelevisita
Description: "Profilo della Composition utilizzata nel contesto della Televisita"
* ^status = #draft
* identifier ^short = "Identificativo indipendente dalla versione."
* type from vsTipologiaDocumentale (required)
* type ^short = "Tipo di Composition."

* subject only Reference(PatientTelemedicina)
* encounter only Reference(EncounterTelemedicina)
* encounter ^short = "Contesto in cui è stato generato il documento."
* date ^short = "Data di modifica della risorsa."

* author only Reference(PractitionerRoleTelemedicina or OrganizationT1)
* author ^short = "Autore della Composition (Medico Refertante)."

* title ^short = "Titolo del documento"

* attester ^slicing.discriminator.type = #value
* attester ^slicing.discriminator.path = "mode"
* attester ^slicing.rules = #open
* attester ^short = "Professionisti che attestano la validità del documento."
* attester ^definition = "Professionisti che attestano la validità del documento. Se la risorsa è creata a fine documentale uno degli attester dovrebbe essere il firmatario, ovvero chi allega la firma digitale al documento."
* attester contains legalAuthenticator 1..1
* attester[legalAuthenticator].mode = #legal  
* attester[legalAuthenticator].time 1..
* attester[legalAuthenticator].party 1..
* attester[legalAuthenticator].party only Reference(PractitionerRoleTelemedicina)

* relatesTo ^short = "Ulteriori documenti correlati"

* event.code ^short = "Tipologia di accesso"
* event.code from http://terminology.hl7.org/ValueSet/v3-ActCode|3.0.0

* title 1..1
* title = "Referto di Televisita"  

* date 1..1
* type = http://loinc.org#75496-0 "Telehealth Note"  


// Sezionamento e slicing delle sezioni interne
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = false
* section contains
    questitoDiagnostico 0..1 and
    InquadramentoClinicoIniziale 0..1 and
    precedentiEsamiEseguiti 0..1 and
    confrontoPrecedentiEsamiEseguiti 0..1 and
    referto 1..1 and
    diagnosi 0..1 and
    conclusioni 0..1 and
    suggerimentiPerMedicoPrescrittore 0..1 and
    accertamentiControlliConsigliati 0..1 and
    terapiaFarmacologicaConsigliata 0..1 and 
    allegati 0..1 and
    prestazioni 1..*

// Slice: questitoDiagnostico
* section[questitoDiagnostico] ^sliceName = "questitoDiagnostico"
* section[questitoDiagnostico].entry only Reference(ObservationTelemedicina)
* section[questitoDiagnostico].code = $loinc#29299-5
// Slice: InquadramentoClinicoIniziale e sottosezioni
* section[InquadramentoClinicoIniziale] ^sliceName = "InquadramentoClinicoIniziale"
* section[InquadramentoClinicoIniziale].section ^slicing.discriminator.type = #value
* section[InquadramentoClinicoIniziale].section ^slicing.discriminator.path = "code"
* section[InquadramentoClinicoIniziale].section ^slicing.rules = #open
* section[InquadramentoClinicoIniziale].code = $loinc#11329-0
* section[InquadramentoClinicoIniziale].section contains
    anamnesi 0..1 and
    allergie 0..* and
    terapiaFarmacologicaInAtto 0..* and
    esameObiettivo 0..1

* section[InquadramentoClinicoIniziale].section[anamnesi] ^sliceName = "anamnesi"
* section[InquadramentoClinicoIniziale].section[anamnesi].code = $loinc#11329-0  
* section[InquadramentoClinicoIniziale].section[anamnesi].entry only Reference(ObservationTelemedicina)

* section[InquadramentoClinicoIniziale].section[allergie] ^sliceName = "allergie"
* section[InquadramentoClinicoIniziale].section[allergie].code = $loinc#48765-2  
* section[InquadramentoClinicoIniziale].section[allergie].entry only Reference(AllergyIntoleranceTelemedicina)

* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto] ^sliceName = "terapiaFarmacologicaInAtto"
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].code = $loinc#10160-0  
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].entry only Reference(MedicationStatement)

* section[InquadramentoClinicoIniziale].section[esameObiettivo] ^sliceName = "esameObiettivo"
* section[InquadramentoClinicoIniziale].section[esameObiettivo].code = $loinc#29545-1  
* section[InquadramentoClinicoIniziale].section[esameObiettivo].entry only Reference(ObservationTelemedicina)

// Slice: precedentiEsamiEseguiti
* section[precedentiEsamiEseguiti] ^sliceName = "precedentiEsamiEseguiti"
* section[precedentiEsamiEseguiti].code = $loinc#30954-2  
* section[precedentiEsamiEseguiti].entry only Reference(ObservationTelemedicina)

// Slice: confrontoPrecedentiEsamiEseguiti
* section[confrontoPrecedentiEsamiEseguiti] ^sliceName = "confrontoPrecedentiEsamiEseguiti"
* section[confrontoPrecedentiEsamiEseguiti].code = $loinc#93126-1  
* section[confrontoPrecedentiEsamiEseguiti].entry only Reference(ObservationTelemedicina)

// Slice: referto
* section[referto] ^sliceName = "referto"
* section[referto].entry only Reference(ObservationTelemedicina)
* section[referto].code = $loinc#47045-0  

// Slice: diagnosi
* section[diagnosi] ^sliceName = "diagnosi"
* section[diagnosi].code = $loinc#29548-5  
* section[diagnosi].entry only Reference(ObservationTelemedicina)

// Slice: conclusioni
* section[conclusioni] ^sliceName = "conclusioni"
* section[conclusioni].entry only Reference(ObservationTelemedicina)
* section[conclusioni].code = $loinc#55110-1  

// Slice: suggerimentiPerMedicoPrescrittore
* section[suggerimentiPerMedicoPrescrittore] ^sliceName = "suggerimentiPerMedicoPrescrittore"
* section[suggerimentiPerMedicoPrescrittore].code = $loinc#62385-0  
* section[suggerimentiPerMedicoPrescrittore].entry only Reference(ObservationTelemedicina)

// Slice: accertamentiControlliConsigliati
* section[accertamentiControlliConsigliati] ^sliceName = "accertamentiControlliConsigliati"
* section[accertamentiControlliConsigliati].code = $loinc#80615-8  
* section[accertamentiControlliConsigliati].entry only Reference(ObservationTelemedicina)

// Slice: terapiaFarmacologicaConsigliata
* section[terapiaFarmacologicaConsigliata] ^sliceName = "terapiaFarmacologicaConsigliata"
* section[terapiaFarmacologicaConsigliata].code = $loinc#93341-6  
* section[terapiaFarmacologicaConsigliata].entry only Reference(MedicationRequestTelemedicina)

* section[allegati] ^sliceName = "allegati"
* section[allegati].entry only Reference(DocumentReference or Binary or Media)
* section[allegati].code = $loinc#77599-9  

* section[prestazioni] ^sliceName = "prestazioni"
* section[prestazioni].entry only Reference(ProcedureTelemedicina)
* section[prestazioni].code = $loinc#62387-6


