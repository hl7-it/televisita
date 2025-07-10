Profile: MedicationRequestTelemedicina
Parent: MedicationRequest
Id: MedicationRequestTelemedicina
Description: "Profilo base della MedicationRequest condiviso in tutti i documenti di Telemedicina" 
* ^status = #draft
* status ^definition = "Stato della richiesta."

* intent = #proposal
* intent ^definition = "Scopo della richiesta."

* medication[x] ^short = "Definizione farmaco"
* medication[x] ^definition = "Identifica il farmaco oggetto delle medication request."

* subject only Reference(PatientTelemedicina)
* subject ^short = "Soggetto per cui è ricchiesta la medication"
* subject ^definition = "Soggetto per cui è ricchiesta la medication"

* requester 1..1

* dosageInstruction ^short = "Instuzioni di dosaggio e somministrazione"
* dosageInstruction ^definition = "Instuzioni di dosaggio e somministrazione"
* dosageInstruction.timing ^short = "Tempistiche di somministrazione del farmaco"
* dosageInstruction.timing ^definition = "Tempistiche di somministrazione del farmaco"
* dosageInstruction.timing.repeat.bounds[x] only Period
* dosageInstruction.timing.repeat.bounds[x] ^short = "Range temporale nel quale è valida la posologia."
* dosageInstruction.timing.repeat.bounds[x] ^definition = "Range temporale nel quale è valida la posologia."
* dosageInstruction.site ^short = "Sito di somministrazione"
* dosageInstruction.site ^definition = "Sito di somministrazione"
* dosageInstruction.route ^short = "Via di somministrazione"
* dosageInstruction.route ^definition = "Via di somministrazione"
* dosageInstruction.doseAndRate ^short = "Dosaggio e frequenza del farmaco"
* dosageInstruction.doseAndRate ^definition = "Dosaggio e frequenza del farmaco"