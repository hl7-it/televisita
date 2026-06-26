### Contesto e scenario di riferimento Nazionale
La Telemedicina sta assumendo un ruolo sempre più centrale nell’evoluzione del sistema sanitario, rappresentando un’opportunità per migliorare l’accesso alle cure, ridurre i tempi di attesa e garantire una maggiore continuità assistenziale, in particolare per i pazienti con patologie croniche o residenti in aree geograficamente svantaggiate.

L’integrazione della Telemedicina nel Sistema Sanitario Nazionale (SSN) prevede la creazione di infrastrutture digitali interoperabili, capaci di gestire in modo efficiente la raccolta, l’elaborazione e la trasmissione dei dati clinici tra i diversi attori coinvolti: pazienti, medici di medicina generale, specialisti, ospedali, farmacie e servizi di emergenza.

### Il dominio della Televisita

Secondo le *Indicazioni nazionali per l'erogazione di prestazioni in telemedicina* approvate dalla Conferenza Permanente per i rapporti tra lo Stato, le Regioni e le Province autonome di Trento e Bolzano (Rep. Atti n. 215/CSR del 17 dicembre 2020), la televisita è un atto medico in cui il professionista interagisce a distanza in tempo reale con il paziente, eventualmente con il supporto di un caregiver o di un operatore sanitario presente presso il paziente stesso.

La televisita costituisce una prestazione sanitaria erogata a distanza che deve garantire gli stessi livelli di qualità, sicurezza, efficacia e tracciabilità previsti per la corrispondente prestazione erogata in presenza. Essa non rappresenta una modalità sostitutiva della relazione medico-paziente, né può essere considerata automaticamente equivalente alla prima visita in presenza. La valutazione circa l'appropriatezza del ricorso alla televisita e le modalità di erogazione della prestazione rimangono in capo al professionista sanitario.

La televisita è generalmente utilizzata nell'ambito di percorsi assistenziali già avviati, per attività di controllo clinico, follow-up, monitoraggio di patologie note, valutazione degli esiti di esami diagnostici, aggiornamento o adeguamento dei piani terapeutici e altre prestazioni per le quali non sia indispensabile la completa esecuzione dell'esame obiettivo in presenza.

L'erogazione della televisita richiede la possibilità di scambiare in tempo reale informazioni cliniche e amministrative rilevanti, inclusi documenti sanitari, referti, immagini e dati utili alla valutazione del paziente. La disponibilità di tali informazioni in formato strutturato e interoperabile è essenziale per garantire la continuità assistenziale e l'integrazione della televisita all'interno del percorso di cura del paziente.

Per questo motivo, la televisita rappresenta uno dei principali servizi di telemedicina e richiede l'adozione di standard condivisi per la rappresentazione, lo scambio e la gestione delle informazioni cliniche e organizzative associate alla prestazione.

*Fonte: Conferenza Permanente per i rapporti tra lo Stato, le Regioni e le Province autonome di Trento e Bolzano, "Indicazioni nazionali per l'erogazione di prestazioni in telemedicina", Rep. Atti n. 215/CSR del 17 dicembre 2020 (https://www.statoregioni.it/media/3221/p-3-csr-rep-n-215-17dic2020.pdf).*


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
<td>Deloitte S.p.A.</td>
<td>fdessi@deloitte.it</td>
</tr>
<tr class="odd">
<td>Autore</td>
<td>Sonia Biasi</td>
<td>Deloitte S.p.A.</td>
<td>sbiasi@deloitte.it</td>
</tr>
<tr class="odd">
<td>Autore</td>
<td>Davide Spanu</td>
<td>Deloitte S.p.A.</td>
<td>dspanu@deloitte.it</td>
</tr>
<tr class="odd">
<td>Autore</td>
<td>William Tasinazzo</td>
<td>Deloitte S.p.A.</td>
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

#### Cross-Version Analysis
{% include cross-version-analysis.xhtml %}