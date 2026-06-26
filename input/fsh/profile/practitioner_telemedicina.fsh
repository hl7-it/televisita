Profile: PractitionerTelevisita
Parent: Practitioner
Id: PractitionerTelevisita
Title: "Practitioner Televisita"
Description: "Profilo della risorsa Practitioner utilizzato per rappresentare il professionista sanitario coinvolto nell'erogazione della televisita, inclusi medico specialista, medico prescrittore e altri operatori sanitari."
* ^version = "0.1.0"
* ^status = #active

* . ^short = "Professionista sanitario coinvolto nella televisita."
* . ^definition = "Rappresenta un professionista sanitario (medico specialista, medico di medicina generale, infermiere o altra figura tecnica) coinvolto nell'erogazione o nella gestione della televisita."

* identifier 1..
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.description = "Slice based on the identifier pattern"
* identifier ^slicing.rules = #open
* identifier ^short = "Identificativo dell'operatore sanitario"
* identifier ^definition = "Un identificatore che si applica a questa persona in questo ruolo."
* identifier contains codiceFiscale 0..1
* identifier[codiceFiscale] ^short = "Codice Fiscale"
* identifier[codiceFiscale] ^definition = "Codice Fiscale"
* identifier[codiceFiscale].system = "http://hl7.it/sid/codiceFiscale" (exactly)

* name ^short = "Nome del professionista sanitario."
* name ^definition = "Nome anagrafico del professionista sanitario coinvolto nella televisita, comprensivo di cognome, nome e, ove disponibili, altri elementi anagrafici."
* name ^comment = "La selezione della proprietà use deve garantire che sia specificato un unico nome usuale e che gli altri utilizzino il nickname (alias), il vecchio o altri valori, a seconda dei casi.  \n\nIn generale, selezionare il valore da utilizzare in ResourceReference.display in base a quanto segue:\n\n1. C'è più di un nome\n2. Uso = abituale\n3. Il periodo è attuale alla data dell'uso\n4. Uso = ufficiale\n5. Altro ordine deciso dalle regole aziendali interne."

* telecom ^short = "Recapiti del professionista sanitario."
* telecom ^definition = "Numeri di telefono, indirizzi e-mail o altri recapiti del professionista sanitario, utilizzabili per comunicazioni nell'ambito del percorso di televisita."

* gender ^short = "Genere amministrativo del professionista."
* gender ^definition = "Genere amministrativo del professionista sanitario utilizzato nei sistemi informativi."

* birthDate ^short = "Data di nascita del professionista."
* birthDate ^definition = "Data di nascita del professionista sanitario, utile ai fini dell'identificazione anagrafica."

* qualification ^short = "Qualifiche e abilitazioni professionali."
* qualification ^definition = "Certificazioni, abilitazioni e titoli professionali del professionista sanitario che attestano le competenze necessarie per l'erogazione della televisita."
* qualification.code ^short = "Codice della qualifica professionale."
* qualification.code ^definition = "Codice che identifica il tipo di qualifica o abilitazione professionale del professionista (es. medico specialista in cardiologia, medico di medicina generale)."

* communication ^short = "Lingue parlate dal professionista."
* communication ^definition = "Lingue in cui il professionista sanitario è in grado di comunicare con l'assistito, rilevante nel contesto di televisite che possono coinvolgere assistiti stranieri."