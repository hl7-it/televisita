Profile: CompositionRefertoTelevisita
Parent: Composition
Id: CompositionRefertoTelevisita
Description: "Profilo della Composition utilizzata nel contesto della Televisita. Rappresenta il documento clinico strutturato prodotto al termine di una sessione di televisita, includendo tutte le sezioni cliniche e amministrative previste dal Decreto Telemedicina."
* ^status = #draft

* identifier ^short = "Identificativo univoco del referto di televisita."
* identifier ^definition = "Identificativo univoco e persistente assegnato al referto di televisita. Consente di referenziare il documento in modo non ambiguo all'interno dei sistemi informativi sanitari."

* type from vsTipologiaDocumentale (required)
* type ^short = "Tipologia del documento clinico."
* type ^definition = "Codifica della tipologia documentale del referto di televisita. Il valore è vincolato al ValueSet VsTipologiaDocumentale che include i codici LOINC previsti per la telemedicina."

* subject only Reference(PatientTelevisita)
* subject ^short = "Paziente a cui si riferisce il referto."
* subject ^definition = "Riferimento al paziente che ha effettuato la televisita. Deve essere conforme al profilo PatientTelevisita."

* encounter only Reference(EncounterTelevisita)
* encounter ^short = "Visita o sessione di televisita a cui il referto è associato."
* encounter ^definition = "Riferimento all'Encounter che rappresenta la sessione di televisita nel corso della quale è stato prodotto il referto."

* date ^short = "Data e ora di compilazione del referto."
* date ^definition = "Data e ora in cui il referto di televisita è stato redatto o modificato dal medico refertante."

* author only Reference(PractitionerRoleTelevisita or OrganizationT1)
* author ^short = "Medico refertante o struttura sanitaria autore del documento."
* author ^definition = "Professionista sanitario (nella sua veste di ruolo) o struttura sanitaria che ha redatto il referto di televisita. In genere corrisponde allo specialista che ha condotto la sessione."

* title ^short = "Titolo del documento di televisita."
* title ^definition = "Titolo leggibile del referto. Il valore è fissato a 'Referto di Televisita'."

* attester ^slicing.discriminator.type = #value
* attester ^slicing.discriminator.path = "mode"
* attester ^slicing.rules = #open
* attester ^short = "Professionisti che attestano la validità del referto."
* attester ^definition = "Professionisti che attestano la validità del documento. Se la risorsa è creata a fine documentale uno degli attester dovrebbe essere il firmatario, ovvero chi allega la firma digitale al documento."
* attester contains legalAuthenticator 1..1
* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].mode ^short = "Modalità di attestazione: firma legale."
* attester[legalAuthenticator].time 1..
* attester[legalAuthenticator].time ^short = "Data e ora della firma del referto."
* attester[legalAuthenticator].time ^definition = "Data e ora in cui il medico refertante ha firmato digitalmente il documento."
* attester[legalAuthenticator].party 1..
* attester[legalAuthenticator].party only Reference(PractitionerRoleTelevisita)
* attester[legalAuthenticator].party ^short = "Medico firmatario del referto."
* attester[legalAuthenticator].party ^definition = "Riferimento al professionista sanitario (PractitionerRoleTelevisita) che ha apposto la firma legale al referto di televisita."

* relatesTo ^short = "Documenti clinici correlati al referto."
* relatesTo ^definition = "Riferimenti ad altri documenti correlati, ad esempio una precedente versione del referto, una richiesta di consulto o documentazione di sessioni precedenti."

* event.code ^short = "Tipo di attività clinica svolta nella televisita."
* event.code ^definition = "Codifica dell'evento clinico documentato nel referto. Tipicamente descrive la tipologia di accesso o atto medico effettuato in modalità remota."
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
* section ^short = "Sezioni cliniche e amministrative del referto di televisita."
* section ^definition = "Raccolta strutturata delle sezioni che compongono il referto di televisita. Ciascuna sezione è identificata da un codice LOINC e contiene le risorse cliniche pertinenti."
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
    prestazioni 1..* and
    allegati 0..1

// Slice: questitoDiagnostico
* section[questitoDiagnostico] ^sliceName = "questitoDiagnostico"
* section[questitoDiagnostico] ^short = "Quesito diagnostico."
* section[questitoDiagnostico] ^definition = "Sezione contenente il quesito diagnostico posto dal medico prescrittore, ovvero il motivo clinico per cui è stata richiesta la televisita."
* section[questitoDiagnostico].entry only Reference(ObservationTelevisita)
* section[questitoDiagnostico].code = $loinc#29299-5

// Slice: InquadramentoClinicoIniziale e sottosezioni
* section[InquadramentoClinicoIniziale] ^sliceName = "InquadramentoClinicoIniziale"
* section[InquadramentoClinicoIniziale] ^short = "Inquadramento clinico iniziale del paziente."
* section[InquadramentoClinicoIniziale] ^definition = "Sezione che raccoglie le informazioni cliniche rilevanti del paziente al momento della televisita: anamnesi, allergie, terapia in atto ed esame obiettivo."
* section[InquadramentoClinicoIniziale].section ^slicing.discriminator.type = #value
* section[InquadramentoClinicoIniziale].section ^slicing.discriminator.path = "code"
* section[InquadramentoClinicoIniziale].section ^slicing.rules = #open
* section[InquadramentoClinicoIniziale].section contains
    anamnesi 0..1 and
    allergie 0..* and
    terapiaFarmacologicaInAtto 0..* and
    esameObiettivo 0..1

* section[InquadramentoClinicoIniziale].section[anamnesi] ^sliceName = "anamnesi"
* section[InquadramentoClinicoIniziale].section[anamnesi] ^short = "Anamnesi del paziente."
* section[InquadramentoClinicoIniziale].section[anamnesi] ^definition = "Sezione contenente la storia clinica del paziente raccolta in occasione della televisita, comprensiva di patologie pregresse e familiarità."
* section[InquadramentoClinicoIniziale].section[anamnesi].code = $loinc#11329-0
* section[InquadramentoClinicoIniziale].section[anamnesi].entry only Reference(ObservationTelevisitaNarrative)
* section[InquadramentoClinicoIniziale].section[anamnesi] obeys sec-obs-code-match

* section[InquadramentoClinicoIniziale].section[allergie] ^sliceName = "allergie"
* section[InquadramentoClinicoIniziale].section[allergie] ^short = "Allergie e intolleranze del paziente."
* section[InquadramentoClinicoIniziale].section[allergie] ^definition = "Sezione contenente le allergie e le reazioni avverse note del paziente, rappresentate tramite risorse AllergyIntoleranceTelevisita."
* section[InquadramentoClinicoIniziale].section[allergie].code = $loinc#48765-2
* section[InquadramentoClinicoIniziale].section[allergie].entry only Reference(AllergyIntoleranceTelevisita)

* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto] ^sliceName = "terapiaFarmacologicaInAtto"
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto] ^short = "Terapia farmacologica in corso al momento della televisita."
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto] ^definition = "Sezione che elenca i farmaci assunti dal paziente al momento della televisita, rappresentati tramite risorse MedicationStatement."
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].code = $loinc#10160-0
* section[InquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].entry only Reference(MedicationStatement)

* section[InquadramentoClinicoIniziale].section[esameObiettivo] ^sliceName = "esameObiettivo"
* section[InquadramentoClinicoIniziale].section[esameObiettivo] ^short = "Esame obiettivo rilevato durante la televisita."
* section[InquadramentoClinicoIniziale].section[esameObiettivo] ^definition = "Sezione contenente i rilievi dell'esame obiettivo effettuato dal medico in modalità remota durante la sessione di televisita."
* section[InquadramentoClinicoIniziale].section[esameObiettivo].code = $loinc#29545-1
* section[InquadramentoClinicoIniziale].section[esameObiettivo].entry only Reference(ObservationTelevisitaNarrative)
* section[InquadramentoClinicoIniziale].section[esameObiettivo] obeys sec-obs-code-match

// Slice: precedentiEsamiEseguiti
* section[precedentiEsamiEseguiti] ^sliceName = "precedentiEsamiEseguiti"
* section[precedentiEsamiEseguiti] ^short = "Precedenti esami ed indagini diagnostiche."
* section[precedentiEsamiEseguiti] ^definition = "Sezione contenente i risultati di esami ed indagini diagnostiche precedentemente eseguiti dal paziente e rilevanti per la televisita."
* section[precedentiEsamiEseguiti].code = $loinc#30954-2
* section[precedentiEsamiEseguiti].entry only Reference(ObservationTelevisita)

// Slice: confrontoPrecedentiEsamiEseguiti
* section[confrontoPrecedentiEsamiEseguiti] ^sliceName = "confrontoPrecedentiEsamiEseguiti"
* section[confrontoPrecedentiEsamiEseguiti] ^short = "Confronto con i precedenti esami eseguiti."
* section[confrontoPrecedentiEsamiEseguiti] ^definition = "Sezione in cui il medico descrive il confronto tra i risultati attuali e i precedenti esami del paziente, evidenziando variazioni clinicamente significative."
* section[confrontoPrecedentiEsamiEseguiti].code = $loinc#93126-1
* section[confrontoPrecedentiEsamiEseguiti].entry only Reference(ObservationTelevisitaNarrative)
* section[confrontoPrecedentiEsamiEseguiti] obeys sec-obs-code-match

// Slice: referto
* section[referto] ^sliceName = "referto"
* section[referto] ^short = "Referto della televisita."
* section[referto] ^definition = "Sezione principale del documento, contenente il referto clinico prodotto dallo specialista al termine della sessione di televisita."
* section[referto].entry only Reference(ObservationTelevisita)
* section[referto].code = $loinc#47045-0

// Slice: diagnosi
* section[diagnosi] ^sliceName = "diagnosi"
* section[diagnosi] ^short = "Diagnosi formulata dallo specialista."
* section[diagnosi] ^definition = "Sezione contenente la diagnosi o il quadro clinico formulato dallo specialista al termine della televisita, codificato secondo i sistemi previsti (es. ICD-9-CM)."
* section[diagnosi].code = $loinc#29548-5
* section[diagnosi].entry only Reference(ObservationTelevisita)

// Slice: conclusioni
* section[conclusioni] ^sliceName = "conclusioni"
* section[conclusioni] ^short = "Conclusioni cliniche della televisita."
* section[conclusioni] ^definition = "Sezione contenente le conclusioni dello specialista al termine della sessione, incluso il giudizio clinico complessivo e le indicazioni per il follow-up."
* section[conclusioni].entry only Reference(ObservationTelevisita)
* section[conclusioni].code = $loinc#55110-1

// Slice: suggerimentiPerMedicoPrescrittore
* section[suggerimentiPerMedicoPrescrittore] ^sliceName = "suggerimentiPerMedicoPrescrittore"
* section[suggerimentiPerMedicoPrescrittore] ^short = "Suggerimenti dello specialista per il medico prescrittore."
* section[suggerimentiPerMedicoPrescrittore] ^definition = "Sezione contenente le indicazioni e raccomandazioni che lo specialista trasmette al medico di medicina generale o al medico prescrittore in esito alla televisita."
* section[suggerimentiPerMedicoPrescrittore].code = $loinc#62385-0
* section[suggerimentiPerMedicoPrescrittore].entry only Reference(ObservationTelevisitaNarrative)
* section[suggerimentiPerMedicoPrescrittore] obeys sec-obs-code-match

// Slice: accertamentiControlliConsigliati
* section[accertamentiControlliConsigliati] ^sliceName = "accertamentiControlliConsigliati"
* section[accertamentiControlliConsigliati] ^short = "Accertamenti e controlli consigliati."
* section[accertamentiControlliConsigliati] ^definition = "Sezione contenente gli esami diagnostici, le indagini strumentali o i controlli clinici che lo specialista raccomanda a seguito della televisita."
* section[accertamentiControlliConsigliati].code = $loinc#80615-8
* section[accertamentiControlliConsigliati].entry only Reference(ObservationTelevisita)

// Slice: terapiaFarmacologicaConsigliata
* section[terapiaFarmacologicaConsigliata] ^sliceName = "terapiaFarmacologicaConsigliata"
* section[terapiaFarmacologicaConsigliata] ^short = "Terapia farmacologica consigliata dallo specialista."
* section[terapiaFarmacologicaConsigliata] ^definition = "Sezione contenente la terapia farmacologica prescritta o consigliata dallo specialista in esito alla televisita, rappresentata tramite risorse MedicationRequestTelevisita."
* section[terapiaFarmacologicaConsigliata].code = $loinc#93341-6
* section[terapiaFarmacologicaConsigliata].entry only Reference(MedicationRequestTelevisita)

// Slice: prestazioni
* section[prestazioni] ^sliceName = "prestazioni"
* section[prestazioni] ^short = "Prestazioni specialistiche erogate durante la televisita."
* section[prestazioni] ^definition = "Sezione obbligatoria contenente le prestazioni specialistiche erogate nel corso della sessione di televisita, identificate tramite codici del Catalogo Nazionale delle Prestazioni."
* section[prestazioni].entry only Reference(ProcedureTelevisita)
* section[prestazioni].code = $loinc#62387-6

// Slice: allegati
* section[allegati] ^sliceName = "allegati"
* section[allegati] ^short = "Allegati al referto di televisita."
* section[allegati] ^definition = "Sezione contenente documenti, immagini o altri file allegati al referto, come referti precedenti, immagini diagnostiche o filmati della sessione."
* section[allegati].entry only Reference(DocumentReference or Binary or Media)
* section[allegati].code = $loinc#77599-9

// Invariante valutato su Composition.section
Invariant: sec-obs-code-match
Severity: #error
Description: "Ogni ObservationNarrative in section.entry deve condividere il code con section.code."
Expression: "entry.reference.resolve().ofType(Observation).empty() or entry.reference.resolve().ofType(Observation).where(code.coding.where(code.exists()).code.intersect(%context.code.coding.where(code.exists()).code).empty()).empty()"