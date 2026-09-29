# LibraTrack: Digital Library Management Database

## Project Overview
LibraTrack is a comprehensive relational database system designed to manage the catalogue and circulation workflow of a modern digital library. The system maintains strict data integrity while tracking the library's physical assets, member interactions, and financial records. 

The database is fully normalized to Third Normal Form (3NF) to eliminate data redundancy and prevent insertion, deletion, and update anomalies. It distinguishes between conceptual titles and physical copies, manages many-to-many relationships between books and authors, and enforces referential integrity across all transactional records.

## Team 8 Members
* Soham Nanduri 
* Tanush K 
* Thanuja Reddy 
* B Chaitanya 
* Toshimah Devi Palanadoo

## Database Schema and Core Entities
The system is built on 10 interconnected tables:
* **categories**: Lookup table for book genres and subjects.
* **publishers**: Lookup table for publishing houses and their locations.
* **authors**: Lookup table for author details.
* **members**: Core table for registered library patrons and their contact information.
* **books**: The conceptual library catalogue storing ISBNs, titles, and publication years.
* **book_authors**: A bridge table resolving the Many-to-Many (M:N) relationship between books and authors.
* **book_copies**: Tracks individual physical copies of a book, their shelf locations, and real-time availability status.
* **loans**: Transactional table recording the issuance and return of physical copies to members.
* **reservations**: Tracks pending, fulfilled, and cancelled book holds placed by members.
* **fines**: Financial ledger recording penalty amounts and payment statuses for overdue loans.

## Key Features & Normalization Highlights
* **3NF Compliance:** All non-prime attributes depend strictly on the primary key, eliminating transitive dependencies (e.g., isolating publisher locations into a separate table).
* **Data Integrity:** Strict Primary Key and Foreign Key constraints ensure no orphan records exist (e.g., a loan cannot exist without a valid member and a valid copy).
* **Duplicate Prevention:** Unique constraints on ISBNs, Member Emails, Member Phones, and Book-Author pairs maintain system accuracy.
* **Automated Cleanup:** Cascading deletions are utilized for structural relationships, ensuring that if a book is removed from the system, its associated authors and pending reservations are cleanly resolved.

## Repository Structure
* `/schema/create_tables.sql` - Contains all Data Definition Language (DDL) statements to construct the database schema, including tables, primary keys, and foreign keys.
* `/data/insert_data.sql` - Contains Data Manipulation Language (DML) statements to populate the database with comprehensive sample data for testing.
* `/queries/queries.sql` - Contains optimized SQL queries designed to answer specific business questions and extract analytical insights.
* `/diagrams/` - Contains the conceptual Entity-Relationship (ER) diagram and the final Relational Schema diagram.
* `/docs/` - Contains the final project report, design rationale, and formal documentation.

## Setup Instructions and Execution
To execute this project locally, ensure you have a standard relational database management system (such as MySQL, PostgreSQL, or SQL Server) installed and running.

**Step 1: Build the Schema**
Open your preferred SQL client (e.g., MySQL Workbench, SQL server, or the command line). Load and execute the `schema/create_tables.sql` script. This script will automatically drop any existing legacy versions of the LibraTrack database, create a fresh schema, and establish all necessary tables and constraints.

**Step 2: Populate the Database**
Load and execute the `data/insert_data.sql` script. This will populate all 10 tables with realistic sample data, ensuring there is a sufficient volume of records to generate meaningful query results.

**Step 3: Run Analytical Queries**
Load and execute the `queries/queries.sql` script. This file contains documented queries that answer the following core business questions:
1. Which books are borrowed most frequently?
2. Who are the most active library members?
3. Which authors have the most borrowed books?
4. Which books have never been borrowed?
5. Which books are currently overdue?
6. How much revenue has been collected in fines?
7. Which subject categories are the most popular among members?
