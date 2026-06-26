### Legenda di lettura

Il **Model Map** rappresenta il modello logico di riferimento utilizzato per la definizione dei profili FHIR e mostra le relazioni esistenti tra le diverse risorse coinvolte nella costruzione del documento FHIR.

Nel diagramma vengono utilizzati differenti tipi di collegamento per evidenziare il ruolo delle risorse all'interno del Bundle e le modalità con cui esse sono correlate tra loro.

### Frecce rosse con cardinalità

Le frecce rosse accompagnate dall'indicazione della cardinalità identificano le risorse che devono essere **obbligatoriamente incluse nel Bundle**.

Queste possono rappresentare:

- risorse richieste dallo standard FHIR in funzione del tipo di Bundle utilizzato (ad esempio `Composition` o `MessageHeader`);
- risorse che costituiscono il contenuto informativo principale dello specifico documento o evento clinico rappresentato (ad esempio osservazioni cliniche, richieste di servizio, piani di cura e altre informazioni rilevanti per il contesto).

### Frecce rosse con indicazione `+entry`

Le frecce rosse contrassegnate dalla dicitura `+entry` identificano risorse che, pur non rappresentando il contenuto principale del documento, devono essere incluse nel Bundle in quanto referenziate da altre risorse.

La loro presenza garantisce la corretta risoluzione delle reference e consente ai sistemi destinatari di interpretare correttamente il contenuto del documento senza dover recuperare informazioni da fonti esterne.

### Frecce nere con indicazione dell'attributo di riferimento

Le frecce nere rappresentano le relazioni tra le risorse e riportano il nome dell'elemento FHIR utilizzato per esprimere la reference (ad esempio `subject`, `author`, `performer`, `reasonReference`).

Tali collegamenti descrivono la struttura logica del documento e consentono di comprendere come le diverse risorse siano correlate tra loro all'interno del Bundle, garantendone coerenza, completezza e navigabilità.


<img src="Modello_logico_TV.png" width="1000"/>

<br clear="all"/>