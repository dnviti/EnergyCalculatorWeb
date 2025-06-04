# **Calcolatore Costi Elettricità (Electricity Cost Calculator)**

Questo progetto è una semplice applicazione web per calcolare il costo stimato del consumo di elettricità. L'utente può inserire la potenza media di un dispositivo, il costo dell'energia per kWh e la durata di utilizzo. L'applicazione simula quindi un consumo leggermente randomizzato per fornire una stima più realistica e visualizza i risultati insieme a un grafico dell'andamento del consumo.

## **✨ Caratteristiche Principali**

* **Input Utente:**  
  * Potenza media del dispositivo (Watt)  
  * Costo dell'energia per kWh (nella valuta locale)  
  * Durata di utilizzo (Ore)  
* **Calcolo e Output:**  
  * Energia totale consumata (Wh, kWh o MWh, a seconda della scala)  
  * Costo totale stimato  
* **Simulazione Realistica:**  
  * Introduce una leggera fluttuazione (±20%) sulla potenza media per simulare un consumo non lineare.  
* **Visualizzazione Grafica:**  
  * Un grafico a linee mostra l'andamento simulato della potenza consumata nel tempo.  
  * Una linea aggiuntiva mostra la potenza media inserita per confronto.  
* **Interfaccia Moderna:**  
  * Realizzata con Tailwind CSS per un design pulito e responsivo.  
* **Localizzazione:**  
  * Interfaccia utente tradotta in italiano.  
* **Containerizzazione:**  
  * Dockerfile incluso per eseguire l'applicazione con Nginx.  
* **Continuous Integration:**  
  * Workflow GitHub Actions per buildare e pubblicare automaticamente l'immagine Docker su GitHub Container Registry (GHCR).

## **🛠️ Tecnologie Utilizzate**

* **Frontend:** HTML, CSS (Tailwind CSS), JavaScript  
* **Grafici:** Chart.js  
* **Web Server (in Docker):** Nginx  
* **Containerizzazione:** Docker  
* **Continuous Integration:** GitHub Actions

## **🚀 Come Iniziare**

### **Prerequisiti**

* Un browser web moderno (es. Chrome, Firefox, Safari, Edge)  
* [Docker](https://www.docker.com/get-started) (opzionale, per l'esecuzione tramite container)  
* [Git](https://git-scm.com/) (opzionale, per clonare il repository)

### **Esecuzione Locale (Senza Docker)**

1. **Clona** il repository (opzionale):  
   git clone \[https://github.com/dnviti/EnergyCalculatorWeb.git\](https://github.com/dnviti/EnergyCalculatorWeb.git)  
   cd EnergyCalculatorWeb

   Oppure, scarica semplicemente il file index.html.  
2. Apri il file index.html:  
   Fai doppio clic sul file index.html o aprilo direttamente con il tuo browser web.

### **Esecuzione con Docker**

1. **Assicurati che Docker sia in esecuzione.**  
2. Costruisci l'immagine Docker:  
   Naviga nella directory principale del progetto (dove si trova il Dockerfile) ed esegui:  
   docker build \-t electricity-calculator-app .

3. **Esegui il container Docker:**  
   docker run \-d \-p 8080:80 electricity-calculator-app

   * \-d esegue il container in background.  
   * \-p 8080:80 mappa la porta 8080 del tuo computer alla porta 80 del container (dove Nginx è in ascolto). Puoi cambiare 8080 se necessario.  
4. Accedi all'applicazione:  
   Apri il tuo browser e vai a http://localhost:8080.

## **🐳 Immagine Docker**

L'applicazione può essere eseguita come un container Docker. Il Dockerfile utilizza un'immagine Nginx stable-alpine per servire il file index.html.

L'immagine Docker viene automaticamente buildata e pubblicata su GitHub Container Registry (GHCR) ad ogni push sul branch main.

**Pull dell'immagine da GHCR (esempio):**

docker pull ghcr.io/dnviti/electricity-calculator-app:latest

(Sostituisci TUO\_USERNAME con il tuo nome utente o organizzazione GitHub)

## **🔄 Continuous Integration (GitHub Actions)**

Il file .github/workflows/docker-publish.yml definisce un workflow di GitHub Actions che:

1. Si attiva ad ogni push sul branch main o manualmente.  
2. Effettua il checkout del codice.  
3. Esegue il login a GitHub Container Registry.  
4. Estrae metadati per i tag dell'immagine Docker.  
5. Costruisce l'immagine Docker utilizzando il Dockerfile presente nel repository.  
6. Pubblica l'immagine Docker su GHCR (ghcr.io/TUO\_USERNAME/electricity-calculator-app).

## **💻 Come Usare l'Applicazione Web**

1. Apri l'applicazione nel tuo browser.  
2. Nel pannello "Inserisci i Dati":  
   * Inserisci la **Potenza Media** del dispositivo in Watt.  
   * Inserisci il **Costo per kWh** nella tua valuta (es. 0.25).  
   * Inserisci la **Durata** di utilizzo in ore.  
3. Clicca sul pulsante **"Calcola"**.  
4. I risultati appariranno nel pannello "Risultati Stimati":  
   * **Energia Totale Consumata**.  
   * **Costo Totale Stimato**.  
5. Il grafico "Andamento del Consumo Energetico Simulato" mostrerà la variazione simulata della potenza nel tempo.

## **🤝 Contributi**

I contributi sono benvenuti\! Se hai suggerimenti o miglioramenti, sentiti libero di aprire una issue o una pull request.

1. Forka il Progetto  
2. Crea il tuo Branch per la Feature (git checkout \-b feature/AmazingFeature)  
3. Committa le tue Modifiche (git commit \-m 'Add some AmazingFeature')  
4. Pusha sul Branch (git push origin feature/AmazingFeature)  
5. Apri una Pull Request

## **📄 Licenza**

Distribuito sotto la Licenza MIT. Vedi LICENSE.txt per maggiori informazioni (se presente, altrimenti si assume MIT).

*Questo README è stato generato per il progetto Calcolatore Costi Elettricità.*
