Profile: AllergyIntoleranceTelevisita
Parent: AllergyIntolerance
Id: AllergyIntoleranceTelevisita
Title: "AllergyIntolerance Televisita"
Description: "Profilo della risorsa AllergyIntolerance utilizzato per rappresentare le allergie e le intolleranze dell'assistito rilevate o comunicate nel contesto della televisita."

* . ^short = "Allergie e intolleranze dell'assistito"
* . ^definition = "Descrive le allergie e le intolleranze dell'assistito, incluse reazioni a farmaci, alimenti o altre sostanze, rilevanti ai fini della televisita."

* clinicalStatus ^short = "Stato clinico dell'allergia o intolleranza."
* clinicalStatus ^definition = "Indica se l'allergia o intolleranza è attualmente attiva, inattiva o risolta."

* verificationStatus ^short = "Stato di verifica dell'allergia o intolleranza."
* verificationStatus ^definition = "Indica il grado di certezza con cui l'allergia o intolleranza è stata confermata (non confermata, confermata, refutata, ecc.)."

* type ^short = "Tipo: allergia o intolleranza."
* type ^definition = "Distingue tra allergia vera (reazione immuno-mediata) e intolleranza (reazione non immuno-mediata)."

* category ^short = "Categoria della sostanza (cibo, farmaco, ambiente, altro)."
* category ^definition = "Indica la categoria della sostanza responsabile dell'allergia o intolleranza (ad es. cibo, farmaco, agente ambientale, altro)."

* code 1..1
* code ^short = "Codice dell'allergia o intolleranza."
* code ^definition = "Codice che identifica la sostanza, il gruppo di sostanze o l'agente responsabile dell'allergia o intolleranza. Può essere espresso con coding standardizzato (es. SNOMED CT) o come testo libero."

* criticality ^short = "Criticità stimata dell'allergia o intolleranza."
* criticality ^definition = "Valutazione del rischio potenziale di una reazione futura. I valori possibili sono: low (bassa), high (alta), unable-to-assess (non valutabile)."

* patient only Reference(PatientTelevisita)
* patient ^short = "Assistito cui si riferisce l'allergia o intolleranza."
* patient ^definition = "Riferimento all'assistito coinvolto nella televisita per il quale è registrata l'allergia o intolleranza."

* onset[x] ^short = "Data di insorgenza dell'allergia o intolleranza."
* onset[x] ^definition = "Data o periodo in cui l'allergia o intolleranza è stata identificata per la prima volta."

* recorder ^short = "Chi ha registrato l'allergia o intolleranza."
* recorder ^definition = "Riferimento al professionista sanitario che ha inserito o validato la segnalazione dell'allergia o intolleranza."

* note ^short = "Note sull'allergia o intolleranza."
* note ^definition = "Informazioni aggiuntive in testo libero relative all'allergia o intolleranza, non altrimenti codificabili negli altri elementi della risorsa."

* reaction ^short = "Dettagli della reazione avversa."
* reaction ^definition = "Descrive gli eventi di reazione avversa osservati o riferiti correlati all'esposizione alla sostanza."
* reaction.substance ^short = "Sostanza specifica che ha causato la reazione."
* reaction.substance ^definition = "Sostanza specifica — che può essere diversa dalla sostanza identificata nel codice dell'allergia — che ha effettivamente scatenato la reazione."
* reaction.manifestation ^short = "Sintomi e segni della reazione."
* reaction.manifestation ^definition = "Segni e sintomi clinici osservati o riferiti durante la reazione avversa."
* reaction.severity ^short = "Gravità della reazione avversa."
* reaction.severity ^definition = "Valutazione clinica della gravità della reazione: mild (lieve), moderate (moderata), severe (grave)."
* reaction.note ^short = "Note sulla reazione."
* reaction.note ^definition = "Informazioni aggiuntive in testo libero relative alla specifica reazione avversa."