

##Welcome to the ABAP-Travel-Management-in-fiori-listREPORT wiki!

This project focuses on building a simple list report using the Restful ABAP Programming (RAP) model within the SAP Business Technology Platform (BTP) trial environment.

The process involves several key steps:

#1.Environment Setup:

The initial phase includes setting up the development environment on the SAP BTP trial account and connecting it via Eclipse. Data Model: The project leverages a pre-existing flight data model, which contains master and transactional data tables related to flights, customers, and bookings. Core Data Services (CDS) View Creation: A fundamental step is creating a CDS view, which acts as a structured interface over the raw data tables, specifically focusing on flight connection information.

#2.Semantic Relationships: The developer establishes crucial semantic relationships between different data fields, such as linking distance values to their respective units of measurement. This enhances data presentation and ensures proper formatting.

#3.Service Definition and Binding: A service definition is created to expose the CDS entities. Subsequently, a service binding is established, specifically configured for OData V2 UI, to enable the data to be consumed and displayed in a simple list report on the user interface.

#4.Service Publication and Preview: The final stage involves publishing the service binding, which generates a unique service URL and metadata. This allows for a preview of the application in the Fiori Elements App Preview, where the list report is displayed, complete with functionalities like data export to Excel or PDF.
