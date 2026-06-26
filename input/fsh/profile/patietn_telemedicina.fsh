Profile: PatientTelevisita
Parent: Patient
Id: PatientTelevisita
Title: "Patient Televisita"
Description: "Profilo della risorsa Patient utilizzato per rappresentare l'assistito coinvolto nel servizio di televisita."
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = true
* ^date = "2024-04-29T16:08:42+02:00"

* extension contains birth-place-ita named luogoNascita 0..1
* extension[luogoNascita] ^short = "Luogo di nascita dell'assistito."
* extension[luogoNascita] ^definition = "Estensione utilizzata per rappresentare il luogo di nascita dell'assistito, ove richiesto per l'identificazione del paziente nel contesto nazionale."

* identifier 1..
* identifier ^short = "Identificativi dell'assistito."
* identifier ^definition = "Identificativi utilizzati per riconoscere l'assistito coinvolto nella televisita, quali Codice Fiscale, identificativo regionale, identificativo ANPR, STP, ENI, ANA o tessera TEAM."
* identifier ^comment = "Nel contesto della televisita è necessario disporre di identificativi idonei a garantire il corretto riconoscimento dell'assistito e l'associazione del referto al relativo percorso assistenziale."
* identifier.extension contains ExtRecordCertification named certificazioneId 0..1
* identifier.extension[certificazioneId] ^short = "Certificazione dell'identificativo."
* identifier.extension[certificazioneId] ^definition = "Indica che l'identificativo è stato certificato da una fonte autorevole. È utilizzato tipicamente per il Codice Fiscale."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this.system"
* identifier ^slicing.rules = #open
* identifier.type from VstipoIdentificatore (extensible)
* identifier contains
    codiceFiscale 0..1 and
    anpr 0..1 and
    idRegionale 0..1 and
    codiceENI 0..1 and
    codiceANA 0..1 and
    tesseraTEAM 0..1 and
    codiceSTP 0..1

* identifier[codiceFiscale] ^short = "Codice Fiscale dell'assistito."
* identifier[codiceFiscale] ^definition = "Identificativo fiscale nazionale dell'assistito, utilizzato per l'identificazione univoca nel contesto sanitario italiano."
* identifier[codiceFiscale].system 1..
* identifier[codiceFiscale].system = $cf (exactly)
* identifier[codiceFiscale].system ^short = "Sistema di identificazione del Codice Fiscale."
* identifier[codiceFiscale].system ^definition = "URI del sistema di identificazione utilizzato per il Codice Fiscale."
* identifier[codiceFiscale].value ^short = "Valore del Codice Fiscale."
* identifier[codiceFiscale].value ^definition = "Valore alfanumerico del Codice Fiscale dell'assistito."
* identifier[codiceFiscale].value obeys pat-id-cf-1

* identifier[anpr] ^short = "Identificativo ANPR dell'assistito."
* identifier[anpr] ^definition = "Identificativo dell'assistito nell'Anagrafe Nazionale della Popolazione Residente."
* identifier[anpr].system 1..
* identifier[anpr].system = $anpr
* identifier[anpr].system ^short = "Sistema di identificazione ANPR."
* identifier[anpr].system ^definition = "URI del sistema di identificazione dell'Anagrafe Nazionale della Popolazione Residente."
* identifier[anpr].value ^short = "Valore dell'identificativo ANPR."
* identifier[anpr].value ^definition = "Valore dell'identificativo dell'assistito nell'ANPR."

* identifier[idRegionale] ^short = "Identificativo regionale dell'assistito."
* identifier[idRegionale] ^definition = "Identificativo assegnato all'assistito da un sistema sanitario regionale."
* identifier[idRegionale].system 1..
* identifier[idRegionale].system from $uri-idRegionali (required)
* identifier[idRegionale].system ^short = "Sistema di identificazione regionale."
* identifier[idRegionale].system ^definition = "URI del sistema regionale che assegna l'identificativo dell'assistito."
* identifier[idRegionale].value ^short = "Valore dell'identificativo regionale."
* identifier[idRegionale].value ^definition = "Valore dell'identificativo regionale dell'assistito."

* identifier[codiceENI] ^short = "Codice ENI dell'assistito."
* identifier[codiceENI] ^definition = "Codice identificativo assegnato agli assistiti europei non iscritti al Servizio Sanitario Nazionale."
* identifier[codiceENI].system 1..
* identifier[codiceENI].system from $uri-idEni (required)
* identifier[codiceENI].system ^short = "Sistema di identificazione ENI."
* identifier[codiceENI].system ^definition = "URI del sistema di identificazione utilizzato per il codice ENI."
* identifier[codiceENI].value ^short = "Valore del codice ENI."
* identifier[codiceENI].value ^definition = "Valore del codice ENI associato all'assistito."

* identifier[codiceANA] ^short = "Codice ANA dell'assistito."
* identifier[codiceANA] ^definition = "Codice identificativo dell'assistito utilizzato nell'Anagrafe Nazionale degli Assistiti."
* identifier[codiceANA].system 1..
* identifier[codiceANA].system = "urn:oid:2.16.840.1.113883.2.9.4.3.15"
* identifier[codiceANA].system ^short = "Sistema di identificazione ANA."
* identifier[codiceANA].system ^definition = "OID del sistema di identificazione dell'Anagrafe Nazionale degli Assistiti."
* identifier[codiceANA].value ^short = "Valore del codice ANA."
* identifier[codiceANA].value ^definition = "Valore del codice ANA associato all'assistito."

* identifier[tesseraTEAM] ^short = "Numero della tessera TEAM."
* identifier[tesseraTEAM] ^definition = "Identificativo della Tessera Europea di Assicurazione Malattia dell'assistito."
* identifier[tesseraTEAM].system 1..
* identifier[tesseraTEAM].system = "urn:oid:2.16.840.1.113883.2.9.4.3.7"
* identifier[tesseraTEAM].system ^short = "Sistema di identificazione TEAM."
* identifier[tesseraTEAM].system ^definition = "OID del sistema di identificazione della Tessera Europea di Assicurazione Malattia."
* identifier[tesseraTEAM].value ^short = "Valore della tessera TEAM."
* identifier[tesseraTEAM].value ^definition = "Numero o valore identificativo della tessera TEAM dell'assistito."

* identifier[codiceSTP] ^short = "Codice STP dell'assistito."
* identifier[codiceSTP] ^definition = "Codice identificativo assegnato allo straniero temporaneamente presente."
* identifier[codiceSTP].system 1..
* identifier[codiceSTP].system from $uri-idStp (required)
* identifier[codiceSTP].system ^short = "Sistema di identificazione STP."
* identifier[codiceSTP].system ^definition = "URI del sistema di identificazione utilizzato per il codice STP."
* identifier[codiceSTP].value ^short = "Valore del codice STP."
* identifier[codiceSTP].value ^definition = "Valore del codice STP associato all'assistito."

* name 1..
* name obeys it-pat-1
* name ^short = "Nome dell'assistito."
* name ^definition = "Nome anagrafico dell'assistito coinvolto nella televisita."
* name ^comment = "Il nome dell'assistito può includere cognome, nome e altri elementi anagrafici utili alla corretta identificazione del paziente."
* name ^requirements = "Il nome dell'assistito è necessario per supportare il riconoscimento del paziente e la corretta associazione del referto di televisita alla persona assistita."

* telecom ^short = "Recapiti dell'assistito."
* telecom ^definition = "Recapiti di contatto dell'assistito, quali numero telefonico o indirizzo e-mail."
* telecom ^comment = "Nel contesto della televisita i recapiti possono essere utilizzati per finalità organizzative, ad esempio per comunicazioni relative all'appuntamento o all'accesso alla piattaforma."

* gender 1..
* gender ^short = "Genere amministrativo dell'assistito."
* gender ^definition = "Genere amministrativo dell'assistito utilizzato nei sistemi informativi sanitari."
* gender ^comment = "Il genere amministrativo può non coincidere con il sesso biologico o con l'identità di genere della persona. Deve essere utilizzato con attenzione nei processi clinici e decisionali."

* address only AddressItTelemedicina
* address ^short = "Indirizzo dell'assistito."
* address ^definition = "Indirizzo di residenza, domicilio o altro recapito territoriale dell'assistito."
* address ^comment = "Nel contesto della televisita l'indirizzo può essere rilevante per identificare il contesto territoriale di presa in carico o la collocazione dell'assistito."

* birthDate 1..
* birthDate ^short = "Data di nascita dell'assistito."
* birthDate ^definition = "Data di nascita dell'assistito."
* birthDate ^comment = "La data di nascita contribuisce all'identificazione anagrafica del paziente e alla corretta associazione delle informazioni cliniche."

* deceased[x] ^short = "Indicatore di decesso dell'assistito."
* deceased[x] ^definition = "Indica se l'assistito risulta deceduto."
* deceased[x] ^comment = "L'assenza di valorizzazione indica che non è disponibile alcuna informazione sullo stato di decesso dell'assistito."
* deceased[x] ^mustSupport = false

* maritalStatus ^short = "Stato civile dell'assistito."
* maritalStatus ^definition = "Stato civile dell'assistito, ove rilevante per il contesto assistenziale o amministrativo."
* maritalStatus ^comment = "Lo stato civile può essere utilizzato per finalità amministrative o di contesto, ma normalmente non costituisce un'informazione centrale per l'erogazione della televisita."

* generalPractitioner ^short = "Medico o struttura di assistenza di riferimento."
* generalPractitioner ^definition = "Riferimenti al Medico di Medicina Generale, Pediatra di Libera Scelta o all'organizzazione sanitaria responsabile dell'assistenza dell'assistito."
* generalPractitioner ^comment = "Nel contesto della televisita consente di indicare il professionista o l'organizzazione di riferimento dell'assistito, utile per la continuità assistenziale e per la condivisione dell'esito della prestazione."
* generalPractitioner ^slicing.discriminator.type = #profile
* generalPractitioner ^slicing.discriminator.path = "$this"
* generalPractitioner ^slicing.rules = #open
* generalPractitioner contains
    mmgPlsRole 0..* and
    mmgPls 0..* and
    aziendaAssistenza 0..*

* generalPractitioner[mmgPlsRole] only Reference(PractitionerRoleTelevisita)
* generalPractitioner[mmgPlsRole] ^short = "Ruolo del MMG o PLS."
* generalPractitioner[mmgPlsRole] ^definition = "Riferimento al ruolo professionale del Medico di Medicina Generale o del Pediatra di Libera Scelta dell'assistito."

* generalPractitioner[mmgPls] only Reference(PractitionerTelevisita)
* generalPractitioner[mmgPls] ^short = "MMG o PLS dell'assistito."
* generalPractitioner[mmgPls] ^definition = "Riferimento al Medico di Medicina Generale o al Pediatra di Libera Scelta dell'assistito."

* generalPractitioner[aziendaAssistenza] only Reference(OrganizationT1)
* generalPractitioner[aziendaAssistenza] ^short = "Azienda sanitaria di assistenza."
* generalPractitioner[aziendaAssistenza] ^definition = "Riferimento all'organizzazione sanitaria responsabile dell'assistenza territoriale dell'assistito."

Invariant: pat-id-cf-1
Description: "Il Codice Fiscale deve essere composto da 16 caratteri alfanumerici secondo il formato previsto dalla normativa italiana."
* severity = #error
* expression = "matches('^[A-Za-z]{6}[0-9LMNPQRSTUV]{2}[A-Za-z]{1}[0-9LMNPQRSTUV]{2}[A-Za-z]{1}[0-9LMNPQRSTUV]{3}[A-Za-z]{1}$')"
* xpath = "matches(@value,'^[A-Za-z]{6}[0-9LMNPQRSTUV]{2}[A-Za-z]{1}[0-9LMNPQRSTUV]{2}[A-Za-z]{1}[0-9LMNPQRSTUV]{3}[A-Za-z]{1}$')"

Invariant: it-pat-1
Description: "Patient.name.given o Patient.name.family, oppure entrambi, DEVONO essere presenti."
* severity = #error
* expression = "family.exists() or given.exists()"
* xpath = "f:given or f:family"