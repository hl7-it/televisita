Profile: AllergyIntoleranceTelevisita
Parent: AllergyIntolerance
Id: AllergyIntoleranceTelevisita
Title: "AllergyIntolerance telemedicina"
Description: "Profilo base del AllergyIntolerance condiviso in tutti i documenti di Telemedicina"
* code 1..1
* code ^short = "Codice dell'allergia o intolleranza"
* code ^definition = "Codice dell'allergia o intolleranza"
* criticality ^short = "Criticità"
* patient only Reference(PatientTelevisita)
* reaction.severity ^short = "Gravità della reazione"