
### Contesto e scenario di riferimento Nazionale
La Telemedicina sta assumendo un ruolo sempre più centrale nell’evoluzione del sistema sanitario, rappresentando un’opportunità per migliorare l’accesso alle cure, ridurre i tempi di attesa e garantire una maggiore continuità assistenziale, in particolare per i pazienti con patologie croniche o residenti in aree geograficamente svantaggiate.

L’integrazione della Telemedicina nel Sistema Sanitario Nazionale (SSN) prevede la creazione di infrastrutture digitali interoperabili, capaci di gestire in modo efficiente la raccolta, l’elaborazione e la trasmissione dei dati clinici tra i diversi attori e setting coinvolti: pazienti, medici di medicina generale, medici specialisti, ospedali, farmacie e servizi di emergenza.

### Il dominio della Televisita

Secondo le *Indicazioni nazionali per l'erogazione di prestazioni in telemedicina* approvate con l' Accordo Stato, Regioni e Province Autonome del 17 dicembre 2020, Rep. Atti n. 215/CSR (Rep. Atti n. 215/CSR del 17 dicembre 2020), la televisita è un atto medico in cui il professionista interagisce a distanza in tempo reale con il paziente, eventualmente con il supporto di un caregiver o di un altro operatore sanitario.

La televisita è una visita medica a distanza, durante la quale il medico interagisce in tempo reale tramite videochiamata con il paziente (se necessario con il caregiver). La televisita consente al medico di raccogliere dati clinici, inclusi referti, immagini e altre informazioni sanitarie, assicurando il rispetto della normativa vigente in materia di protezione dei dati personali e sicurezza delle informazioni sanitarie.
La televisita consente di confermare una diagnosi o formulare una diagnosi differenziale, prescrivere terapie e rilasciare documentazione con pieno valore clinico e medico - legale (referto; certificato; altre prescrizioni), che può essere trasmessa al Fascicolo Sanitario Elettronico (FSE) per garantirne tracciabilità e accessibilità.
 
Il medico, in qualità di responsabile clinico della prestazione, valuta l’appropriatezza della televisita caso per caso, in base alle condizioni cliniche del paziente e alla disponibilità di informazioni sanitarie rilevanti. In linea generale, la televisita non sostituisce la prima visita in presenza, che resta raccomandata per una valutazione completa e diretta del paziente. Tuttavia, in specifici casi clinici selezionati, la televisita può essere utilizzata anche per la prima valutazione del paziente, quando il medico ritiene, sotto la propria responsabilità, che la modalità a distanza consenta comunque una valutazione clinica completa e sicura.

<!-- *Fonte: ([https://www.statoregioni.it/media/3221/p-3-csr-rep-n-215-17dic2020.pdf](https://www.statoregioni.it/media/3221/p-3-csr-rep-n-215-17dic2020.pdf)).* -->
Fonte:
Accordo Stato-regioni del 18 novembre 2021 (Rep. atti n. 231/ CSR), sul documento recante “Indicazioni nazionali per l’erogazione di prestazioni e servizi di teleriabilitazione da parte delle professioni sanitarie”.
 
DM 21 settembre 2022 pubblicato in GURI n.256 il 02 novembre 2022 “Approvazione delle Linee guida per i servizi di Telemedicina - Requisiti funzionali e livelli di servizio”.
 
DM 30 settembre 2022 pubblicato in GURI n.298 il 22 dicembre 2022 “Procedure di selezione delle soluzioni di Telemedicina e diffusione sul territorio nazionale, nonché i meccanismi di valutazione delle proposte di fabbisogno regionale per i servizi minimi di Telemedicina e l'adozione delle Linee di indirizzo per i servizi di Telemedicina”.
 
Decreto Ministeriale 19 novembre 2025 pubblicato in GURI n. 301 del 30 dicembre 2025 “Disciplina del trattamento dei dati personali nell'ambito della infrastruttura della Piattaforma nazionale telemedicina”;

Glossario Nazionale di Telemedicina: Definizioni e termini chiave per i servizi e le componenti della Telemedicina” pubblicato a gennaio 2026 nella sezione “Linee di indirizzo, PDTA e Protocolli” nell’ambito della Piattaforma Nazionale di Telemedicina (PNT).

### Integrazione con i sistemi Regionali e Nazionali
L'integrazione con i sistemi sanitari regionali e nazionali è fondamentale per garantire un flusso di informazioni omogeneo e sicuro tra la Piattaforma di Telemedicina e le infrastrutture sanitarie esistenti.

Di seguito è riportato uno schema esemplificativo che illustra il flusso dei dati tra i diversi sistemi, evidenziando come le informazioni vengano trasferite e integrate all'interno della Piattaforma Nazionale di Telemedicina.

<img src="Flusso_Dati_PNT_IRT_v6.png" width="950"/>

<br clear="all"/>

I referti prodotti vengono prima validati dal Gateway, che assicura l'integrità e la conformità dei dati. Successivamente, i dati validati vengono archiviati e indicizzati nei registri nazionali e regionali. Il Gateway invia quindi le informazioni all'EDS, che a sua volta notifica la Piattaforma Nazionale di Telemedicina, garantendo una gestione centralizzata e conforme del flusso informativo.

### Scelte di design
La soluzione adottata da questa guida bilancia l'esigenza di rappresentare il referto di televisita come documento clinico completo con la necessità di rendere disponibili in modo strutturato e interoperabile i dati clinici e amministrativi che lo compongono.

A tal fine, è stato scelto di prevedere due differenti modalità di rappresentazione e scambio delle informazioni associate alla televisita:
 - Bundle di tipo document, finalizzato alla condivisione e alla conservazione del referto di televisita come documento clinico unitario.
 - Bundle di tipo transaction, finalizzato alla fruizione, all'elaborazione e al riutilizzo delle singole risorse FHIR che descrivono la prestazione e il relativo contenuto clinico.

Il bundle di tipo document consente di rappresentare il referto di televisita come un insieme coerente di informazioni cliniche organizzate secondo il paradigma documentale di FHIR, favorendone la visualizzazione, la conservazione e la condivisione tra i diversi attori del processo assistenziale.
Il bundle di tipo transaction, invece, consente di accedere alle singole informazioni in forma strutturata, permettendo ai sistemi informativi di ricercare, elaborare e riutilizzare i dati clinici e amministrativi associati alla televisita senza la necessità di interpretare l'intero documento.
Questa scelta progettuale consente di soddisfare contemporaneamente due esigenze complementari:
 - garantire la disponibilità del referto di televisita come documento clinico formalmente condivisibile e conservabile;
 - favorire l'interoperabilità applicativa e la valorizzazione del patrimonio informativo attraverso la fruizione granulare delle risorse FHIR che compongono il referto.

L'adozione di entrambe le rappresentazioni permette quindi di supportare sia gli scenari orientati al documento sia gli scenari orientati ai dati, favorendo la continuità assistenziale, l'integrazione tra sistemi e il riutilizzo delle informazioni cliniche nel contesto dei servizi di telemedicina.
<img src="design_televisita.png" width="800"/>

<br clear="all"/>

### Autori e contributori
<table>
<thead>
<tr class="header">
<th>Ruolo</th>
<th>Nome</th>
<th>Organizzazione</th>
<th>Contatto</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Autore</td>
<td>Leonardo Alcaro</td>
<td>HL7 Italia</td>
<td>leonardo.alcaro@regione.calabria.it</td>
</tr>
<tr class="even">
<td>Autore</td>
<td>Mario Sicuranza</td>
<td>HL7 Italia</td>
<td>mario.sicuranza@icar.cnr.it</td>
</tr>
<tr class="even">
<td>Autore</td>
<td>Sara Marceglia</td>
<td>Agenas</td>
<td>marceglia@agenas.it</td>
</tr>
<tr class="odd">
<td>Autore</td>
<td>Federica Dessì</td>
<td>Deloitte S.B. S.r.l.
 </td>
<td>fdessi@deloitte.it</td>
</tr>
<tr class="odd">
<td>Autore</td>
<td>Sonia Biasi</td>
<td>Deloitte S.B. S.r.l.
 </td>
<td>sbiasi@deloitte.it</td>
</tr>
<tr class="odd">
<td>Autore</td>
<td>Davide Spanu</td>
<td>Deloitte S.B. S.r.l.
 </td>
<td>dspanu@deloitte.it</td>
</tr>
<tr class="odd">
<td>Autore</td>
<td>William Tasinazzo</td>
<td>Deloitte S.B. S.r.l.
 </td>
<td>wtasinazzo@deloitte.it</td>
</tr>
<tr class="even">
<td>Autore</td>
<td>Maria Giovanna Antida Preziosi</td>
<td>SOGEI</td>
<td>mpreziosi@sogei.it</td>
</tr>
</tbody>
</table>

### Intellectual Property Statements
{% include ip-statements.xhtml %}

### Dependenciy table
{% include dependency-table.xhtml %}

#### Cross-Version Analysis
{% include cross-version-analysis.xhtml %}