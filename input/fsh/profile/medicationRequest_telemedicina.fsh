Profile: MedicationRequestTelevisita
Parent: MedicationRequest
Id: MedicationRequestTelevisita
Title: "MedicationRequest Televisita"
Description: "Profilo della risorsa MedicationRequest utilizzato per rappresentare la terapia farmacologica consigliata al termine della televisita."
* ^status = #draft

* . ^short = "Terapia farmacologica consigliata nella televisita."
* . ^definition = "Descrive la prescrizione o il consiglio terapeutico farmacologico formulato dal medico specialista al termine della televisita, inclusi il farmaco, il dosaggio, la via e i tempi di somministrazione."

* status ^short = "Stato della richiesta di terapia farmacologica."
* status ^definition = "Stato attuale della MedicationRequest. I valori possibili includono: active, on-hold, cancelled, completed, entered-in-error, stopped, draft, unknown."

* intent = #proposal
* intent ^short = "Scopo della richiesta (proposta terapeutica)."
* intent ^definition = "Nel contesto della televisita il valore è impostato a 'proposal', indicando che si tratta di una proposta terapeutica formulata dallo specialista."

* medication[x] ^short = "Definizione farmaco"
* medication[x] ^definition = "Identifica il farmaco oggetto delle medication request."

* subject only Reference(PatientTelevisita)
* subject ^short = "Soggetto per cui è ricchiesta la medication"
* subject ^definition = "Soggetto per cui è ricchiesta la medication"

* requester 1..1
* requester ^short = "Medico che ha formulato la terapia farmacologica."
* requester ^definition = "Riferimento al medico specialista (PractitionerRole) che ha formulato la proposta terapeutica farmacologica nel contesto della televisita."

* dosageInstruction ^short = "Istruzioni di dosaggio e somministrazione."
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