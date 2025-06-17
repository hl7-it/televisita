Alias: $loinc = http://loinc.org

Profile: CompositionRefertoTelevisita
Parent: CompositionTelemedicina
Id: CompositionRefertoTelevisita
Description: "Profilo della Composition utilizzata nel contesto della Televisita"
* ^status = #draft

// Elementi primari della Composition
* status 1..1
* status = #final (exactly)

* title 1..1
* title = "Referto di Televisita" (exactly)

* date 1..1
* event.code ^short = "Tipologia di accesso"
* type = http://loinc.org#75496-0 (exactly)

* subject 1..1
* subject only Reference(PatientTelemedicina)

* encounter 0..1
* encounter only Reference(EncounterTelemedicina)

// Sezionamento e slicing delle sezioni interne
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

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
    allegati 0..1

// Slice: questitoDiagnostico
* section[questitoDiagnostico] ^sliceName = "questitoDiagnostico"
* section[questitoDiagnostico].entry only Reference(ObservationTelemedicina)
* section[questitoDiagnostico].code = $loinc#29299-5 (exactly)

// Slice: InquadramentoClinicoIniziale e sottosezioni
* section[InquadramentoClinicoIniziale] ^sliceName = "InquadramentoClinicoIniziale"
* section[InquadramentoClinicoIniziale].section ^slicing.discriminator.type = #value
* section[InquadramentoClinicoIniziale].section ^slicing.discriminator.path = "code"
* section[InquadramentoClinicoIniziale].section ^slicing.rules = #open
* section[InquadramentoClinicoIniziale].section contains
    anamnesi 0..1 and
    allergie 0..* and
    terapiaFarmacologicaInAtto 0..* and
    esameObiettivo 0..1

* section[InquadramentoClinicoIniziale].section[anamnesi] ^sliceName = "anamnesi"
* section[InquadramentoClinicoIniziale].section[anamnesi].code = $loinc#11329-0 (exactly)
* section[InquadramentoClinicoIniziale].section[anamnesi].entry only Reference(ObservationTelemedicina)

* section[InquadramentoClinicoIniziale].section[allergie] ^sliceName = "allergie"
* section[InquadramentoClinicoIniziale].section[allergie].code = $loinc#48765-2 (exactly)
* section[InquadramentoClinicoIniziale].section[allergie].entry only Reference(AllergyIntoleranceTelemedicina)

* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto] ^sliceName = "terapiaFarmacologicaInAtto"
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].code = $loinc#10160-0 (exactly)
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].entry only Reference(MedicationStatement)

* section[InquadramentoClinicoIniziale].section[esameObiettivo] ^sliceName = "esameObiettivo"
* section[InquadramentoClinicoIniziale].section[esameObiettivo].code = $loinc#29545-1 (exactly)
* section[InquadramentoClinicoIniziale].section[esameObiettivo].entry only Reference(ObservationTelemedicina)

// Slice: precedentiEsamiEseguiti
* section[precedentiEsamiEseguiti] ^sliceName = "precedentiEsamiEseguiti"
* section[precedentiEsamiEseguiti].code = $loinc#30954-2 (exactly)
* section[precedentiEsamiEseguiti].entry only Reference(ObservationTelemedicina)

// Slice: confrontoPrecedentiEsamiEseguiti
* section[confrontoPrecedentiEsamiEseguiti] ^sliceName = "confrontoPrecedentiEsamiEseguiti"
* section[confrontoPrecedentiEsamiEseguiti].code = $loinc#93126-1 (exactly)
* section[confrontoPrecedentiEsamiEseguiti].entry only Reference(ObservationTelemedicina)

// Slice: referto
* section[referto] ^sliceName = "referto"
* section[referto].entry only Reference(ObservationTelemedicina)
* section[referto].code = $loinc#47045-0 (exactly)

// Slice: diagnosi
* section[diagnosi] ^sliceName = "diagnosi"
* section[diagnosi].code = $loinc#29548-5 (exactly)
* section[diagnosi].entry only Reference(ObservationTelemedicina)

// Slice: conclusioni
* section[conclusioni] ^sliceName = "conclusioni"
* section[conclusioni].entry only Reference(ObservationTelemedicina)
* section[conclusioni].code = $loinc#55110-1 (exactly)

// Slice: suggerimentiPerMedicoPrescrittore
* section[suggerimentiPerMedicoPrescrittore] ^sliceName = "suggerimentiPerMedicoPrescrittore"
* section[suggerimentiPerMedicoPrescrittore].code = $loinc#62385-0 (exactly)
* section[suggerimentiPerMedicoPrescrittore].entry only Reference(ObservationTelemedicina)

// Slice: accertamentiControlliConsigliati
* section[accertamentiControlliConsigliati] ^sliceName = "accertamentiControlliConsigliati"
* section[accertamentiControlliConsigliati].code = $loinc#80615-8 (exactly)
* section[accertamentiControlliConsigliati].entry only Reference(ObservationTelemedicina)

// Slice: terapiaFarmacologicaConsigliata
* section[terapiaFarmacologicaConsigliata] ^sliceName = "terapiaFarmacologicaConsigliata"
* section[terapiaFarmacologicaConsigliata].entry only Reference(MedicationRequestTelemedicina)
* section[terapiaFarmacologicaConsigliata].code = $loinc#93341-6 (exactly)

* section[allegati] ^sliceName = "allegati"
* section[allegati].entry only Reference(DocumentReference or Binary)
* section[allegati].code = $loinc#77599-9 (exactly)



