

# 🧳 ABAP Travel Management – Fiori List Report

This repository demonstrates the development of a **simple Fiori List Report application** using the **Restful ABAP Programming (RAP) model** on the **SAP Business Technology Platform (BTP) Trial** environment.

The project showcases how backend ABAP artifacts are exposed as OData services and consumed by **Fiori Elements** to generate a list report UI with minimal UI coding.

# Environment Setup:

The initial phase includes setting up the development environment on the SAP BTP trial account and connecting it via Eclipse. Data Model: The project leverages a pre-existing flight data model, which contains master and transactional data tables related to flights, customers, and bookings. Core Data Services (CDS) View Creation: A fundamental step is creating a CDS view, which acts as a structured interface over the raw data tables, specifically focusing on flight connection information.

# Semantic Relationships: 

The developer establishes crucial semantic relationships between different data fields, such as linking distance values to their respective units of measurement. This enhances data presentation and ensures proper formatting.

# Service Definition and Binding:

A service definition is created to expose the CDS entities. Subsequently, a service binding is established, specifically configured for OData V2 UI, to enable the data to be consumed and displayed in a simple list report on the user interface.

# Service Publication and Preview: 

The final stage involves p
ublishing the service binding, which generates a unique service URL and metadata. This allows for a preview of the application in the Fiori Elements App Preview, where the list report is displayed, complete with functionalities like data export to Excel or PDF.


---

## 📌 Project Overview

The application is built on top of a **pre-existing flight data model**, containing master and transactional data related to:

* Flights
* Flight connections
* Customers
* Bookings

Using RAP and CDS views, the data is modeled, exposed, and displayed in a Fiori List Report.

---

## 🛠️ Technologies Used

* ABAP RESTful Application Programming Model (RAP)
* SAP BTP Trial Account
* Eclipse with ABAP Development Tools (ADT)
* Core Data Services (CDS)
* OData V2
* SAP Fiori Elements

---

## 🚀 Implementation Steps with Code



## 1️⃣ Environment Setup

* SAP BTP Trial account created
* ABAP Environment connected to **Eclipse ADT**
* Standard flight tables (`/DMO/CONNECTION`, `/DMO/TRAVEL`, etc.) used

---

## 2️⃣ CDS View – Data Model

The CDS view acts as the **core data model** for the List Report.

```abap
@AbapCatalog.sqlViewName: 'ZVFLIGHTCON'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Flight Connections List'

define view ZI_Flight_Connection
  as select from /dmo/connection
{
  key carrid           as AirlineID,
  key connid           as FlightNumber,
      airport_from_id  as DepartureAirport,
      airport_to_id    as DestinationAirport,
      departure_time   as DepartureTime,
      arrival_time     as ArrivalTime,
      distance         as Distance,
      distance_unit    as DistanceUnit
}


## 3️⃣ Semantic Annotations

Semantic annotations improve **data meaning and UI formatting** in Fiori.

```abap
@Semantics.quantity.unitOfMeasure: 'DistanceUnit'
Distance,

@Semantics.unitOfMeasure: true
DistanceUnit
```

✔ Ensures correct unit handling
✔ Displays distance values properly in the List Report

---

## 4️⃣ Service Definition

The service definition exposes the CDS view for UI consumption.

```abap
@EndUserText.label: 'Flight Connection OData Service'
define service ZUI_FLIGHT_CONNECTION {
  expose ZI_Flight_Connection as FlightConnections;
}
```

---

## 5️⃣ Service Binding

* Binding Type: **OData V2 – UI**
* Used for **Fiori Elements List Report**

```text
Service Binding Name: ZUI_FLIGHT_CONNECTION_O2
Binding Type       : OData V2 - UI
```

After publishing, the service generates:

* OData service URL
* Metadata document
* Fiori Elements preview option

---

## 6️⃣ Application Preview

The application is previewed using **Fiori Elements App Preview**, providing:

* Auto-generated List Report
* Sorting and filtering
* Export to:

  * 📄 PDF
  * 📊 Excel
* Zero freestyle UI coding

---

## 📊 Application Features

* Fiori List Report UI
* Automatic table rendering
* Built-in search, filter, and sort
* Export functionality
* RAP-based clean architecture

---

## 📎 Reference Document

The following document contains sample **flight connection data** used for this project:

* [Flight Connections – Technical Document](docs/Connections.pdf)

---

## 🎯 Key Learnings

* Hands-on experience with RAP architecture
* CDS-based data modeling
* OData service lifecycle
* Rapid UI generation using Fiori Elements


## 📄 License

This project is created for **learning and demonstration purposes** using SAP BTP Trial.


