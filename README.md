# **Energy Calculator Suite**

This project is a web application that provides a suite of calculators for detailed energy analysis. It has been expanded from a simple cost calculator to a comprehensive tool for evaluating electricity costs, photovoltaic system savings, and overall energy consumption.

---

## **✨ Key Features**

The application is divided into two main calculators, accessible from the main page:

### **1. Advanced Cost Calculator (`cost-calculator.html`)**

This tool simulates electricity consumption and costs, with advanced options for modeling renewable energy sources and storage.

* **Device Consumption Simulation**:
    * Set the average power of a device (in Watts).
    * Define the start time and duration of the device's operation within a 24-hour cycle.
* **Photovoltaic (PV) System Simulation**:
    * Include a PV system in the simulation by specifying its peak power (kWp).
    * Select the **geographic area**, **season**, and **type of day** (sunny, cloudy, etc.) to get a realistic production estimate.
    * Option to simulate with a randomized "current weather" factor.
* **Battery Storage Simulation**:
    * Add a storage battery to the system.
    * Set the battery's **capacity** (kWh) and its **initial charge** (%).
* **Detailed Results and Analysis**:
    * Get a breakdown of energy consumption: from the grid, from the PV system, and from the battery.
    * View the total estimated cost of electricity drawn from the grid.
    * Visualize the simulated energy flows over time with an interactive chart showing device consumption, PV production, grid draw, and battery charge level.
* **Multi-language Support**: The interface is available in **Italian** and **English**.

### **2. Photovoltaic Savings Calculator (`savings-calculator.html`)**

This calculator is designed to analyze the economic viability of a photovoltaic system based on real consumption data.

* **Economic Analysis**:
    * Input your **total home consumption**, **consumption from the grid**, and **energy fed into the grid**.
    * Set the purchase cost of electricity (€/kWh) and the selling price for the energy you feed into the grid.
* **Specific Utility Management**:
    * Add a list of specific electrical utilities (e.g., "Electric Car," "Night-time appliances") with their respective consumption to analyze their cost impact.
    * **Group Management**: Save and load predefined groups of utilities to speed up repetitive analysis.
* **Comprehensive Summaries**:
    * **Economic Summary**: See a clear breakdown of costs from the grid, savings from self-consumption, earnings from selling energy, and the final economic balance.
    * **Energy Summary**: Analyze the flow of energy in kWh, including self-consumed energy, energy from the grid, energy fed in, and total energy produced by the PV system.
* **Visualizations**:
    * Interactive bar charts show the breakdown of energy sources (grid vs. PV) and the impact of specific utilities on total consumption.

---

## **🛠️ Technologies Used**

* **Frontend**: HTML, CSS (Tailwind CSS), JavaScript
* **Charting**: Chart.js
* **Web Server (in Docker)**: Nginx
* **Containerization**: Docker
* **Continuous Integration**: GitHub Actions

---

## **🚀 How to Get Started**

### **Prerequisites**

* A modern web browser (e.g., Chrome, Firefox, Safari, Edge)
* [Docker](https://www.docker.com/get-started) (optional, for running via container)
* [Git](https://git-scm.com/) (optional, for cloning the repository)

### **Local Execution (Without Docker)**

1.  **Clone** the repository (optional):
    ```bash
    git clone [https://github.com/dnviti/EnergyCalculatorWeb.git](https://github.com/dnviti/EnergyCalculatorWeb.git)
    cd EnergyCalculatorWeb
    ```
    Alternatively, you can just download the project files.
2.  Open the `pages/index.html` file in your web browser to access the main menu and navigate to the desired calculator.

### **Execution with Docker**

1.  **Make sure Docker is running.**
2.  Build the Docker image. Navigate to the project's root directory and run:
    ```bash
    docker build -t energy-calculator-suite .
    ```
3.  **Run the Docker container**:
    ```bash
    docker run -d -p 8080:80 energy-calculator-suite
    ```
4.  **Access the application**: Open your browser and go to `http://localhost:8080`.

---

## **🐳 Docker Image**

The application can be run as a Docker container. The `Dockerfile` uses a stable Nginx image to serve the static files. The image is automatically built and published to the GitHub Container Registry (GHCR) with every push to the `master` branch.

**Pulling the image from GHCR:**
```bash
docker pull ghcr.io/dnviti/electricity-calculator-app:latest
```

---

## **🔄 Continuous Integration (GitHub Actions)**

The `.github/workflows/docker-publish.yml` file defines a GitHub Actions workflow that automates the building and publishing of the Docker image to GHCR.

---

## **📄 License**

Distributed under the MIT License.
