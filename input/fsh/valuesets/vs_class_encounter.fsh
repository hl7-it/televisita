ValueSet: VsClassEncounterTelevisita
Id: VsClassEncounterTelevisita
Title: "Classe Encounter Televisita"
Description: "ValueSet che limita la classificazione dell'incontro (Encounter.class) ai soli valori ammessi nel contesto della telemedicina: VR (visita virtuale/remota) e HH (assistenza domiciliare)."
* ^status = #draft
* ^experimental = false
* $v3-ActCode#VR "virtual"
* $v3-ActCode#HH "home health"
