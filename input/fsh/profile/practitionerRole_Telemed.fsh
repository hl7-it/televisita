Profile: PractitionerRoleTelevisita
Parent: PractitionerRole
Id: PractitionerRoleTelevisita
Title: "PractitionerRoleTelevisita"
Description: "Profilo della risorsa PractitionerRole utilizzato per rappresentare il ruolo professionale del medico specialista o di altro operatore sanitario nell'ambito dell'erogazione della televisita."
* ^version = "0.1.0"
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#IT

* . ^short = "Ruolo professionale del medico nella televisita."
* . ^definition = "Rappresenta il ruolo che un professionista sanitario ricopre in una specifica organizzazione per l'erogazione della televisita, comprensivo di specialità, riferimento all'organizzazione e recapiti."

* identifier ^short = "Identificativo dell'operatore (e.g. Codice Fiscale, ID Regionale)"
* identifier ^definition = "Identificatori aziendali specifici di un ruolo/località."

* period ^short = "Periodo durante il quale il professionista è autorizzato a svolgere il ruolo."
* period ^definition = "Il periodo in cui la persona è autorizzata ad agire come professionista in questi ruoli per l'organizzazione."
* period ^comment = "Un Periodo specifica un intervallo di tempo; il contesto d'uso specificherà se si applica l'intero intervallo (ad esempio, \"il paziente è stato ricoverato in ospedale per questo intervallo di tempo\") o se si applica un valore dell'intervallo (ad esempio, \"la somministrazione al paziente è avvenuta tra questi due momenti\").\n\nPeriodo non è usato per una durata (una misura del tempo trascorso). Vedere [Duration](datatypes.html#Duration)."

* practitioner only Reference(PractitionerTelevisita)
* practitioner ^short = "Dettagli dell'operatore"
* practitioner ^definition = "Il professionista è in grado di fornire i servizi definiti per l'organizzazione."
* practitioner ^comment = "I riferimenti DEVONO essere un riferimento a una risorsa FHIR effettiva e DEVONO essere risolvibili (consentendo il controllo dell'accesso, la temporanea indisponibilità, ecc.) La risoluzione può avvenire tramite il recupero dell'URL o, se applicabile al tipo di risorsa, trattando un riferimento assoluto come un URL canonico e cercandolo in un registro/repository locale."

* organization only Reference(OrganizationT1)
* organization ^short = "Organizzazione di Appartenenza"
* organization ^definition = "L'organizzazione in cui il professionista svolge i ruoli associati."
* organization ^comment = "I riferimenti DEVONO essere un riferimento a una risorsa FHIR effettiva e DEVONO essere risolvibili (consentendo il controllo dell'accesso, la temporanea indisponibilità, ecc.) La risoluzione può avvenire tramite il recupero dell'URL o, se applicabile al tipo di risorsa, trattando un riferimento assoluto come un URL canonico e cercandolo in un registro/repository locale."

* code ^short = "Ruoli che questo professionista può svolgere."
* code ^definition = "Ruoli che questo professionista è autorizzato a svolgere per l'organizzazione."
* code ^comment = "Una persona può avere più di un ruolo."
* specialty from vsspecialityPractitionerRole (required)
* specialty ^short = "Branca specialistica del professionista."
* specialty ^definition = "Specialità clinica del professionista sanitario nel contesto della televisita (es. cardiologia, neurologia, dermatologia). Il valore è vincolato al ValueSet delle specialità ambulatoriali."

* telecom ^short = "Recapiti del professionista nel ruolo specifico."
* telecom ^definition = "Numeri di telefono, indirizzi e-mail o altri recapiti del professionista nell'ambito del ruolo svolto per l'organizzazione, utilizzabili nell'ambito del percorso di televisita."

* availableTime ^short = "Disponibilità oraria per le televisite."
* availableTime ^definition = "Indica i giorni e gli orari in cui il professionista è disponibile per l'erogazione di televisite nell'ambito del ruolo ricoperto."