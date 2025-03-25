# Crowdfunding_ETL# Crowdfunding_ETL

## 👥 Contributors

- [Diana Gibson](https://github.com/digibson3/Crowdfunding_ETL)  
- [Max Becker](https://github.com/participant2username)  
- [Jenni Kim](https://github.com/jennibean-k)
- [Caleb Schmitt](https://github.com/participant4username)

## Project Overview

This project is a collaborative ETL( Extract, Transform, Load) mini project focused on processing crowdfunding campaign data using Python, Pandas, and JSON files. The goal was to simulate a real-world data pipeline by extracting raw data, cleaning and transforming it into structures formats, and exporting it for further analysis or storage.

Instead of loading data into a SQL database, this project stores the final output in JSON files to maintain a lightweight and flexible structure for the dataset.

## Tools & Technologies 
* Python
* Pandas
* JSON
* Jupyter Notebook
* GitHub

## ETL Process Summary

### 1. Extract
* Loaded data from Excel files: crowdfunding.xlsx and contacts.xlsx.
* Parsed nested data and string fields using Python dictionary methods and regular expressions.

### 2. Transform
* Category Data: Extracted unique categories and generated a list with `category_id` values `(cat1, cat2,...)`.
* Subcategory Data: Creatd structured subcatergory data with `subcategory_id` values `(subcat1, subcat2,...)`.
* Campaign Data: Cleaned campaign information, converted data types, mapped IDs, and formateed data fields.
* Contact Data: Cleaned and split names, validated emails, and extracted IDs.

### 3. Load
* Transformed data was exported into JSON files for each dataset:
    * `category.json`
    * `subcategory.json`
    * `campaign.json`
    * `contact.json`

These structured JSON files serve as the final output for further use in dashboards, analytics tools, or intergation into other systems.

## Entity Relationship Diagram (ERD)

To maintain a clear understanding of the data model, we created an Entity Relationship Diagram (ERD) to show how the various components of the crowdfunding data relate to one another.

This ERD outlines the reltionships between:
* `category`
* `subcatergory`
* `campaign` 
* `contacts`

## ERD Overview
* Each `campaign` is linked to one `catergory` and one `subcategory`.
* Each `campaign` also refernces a `contact` who created or manages a campaign.
* `catergory_id` and `subcatergory_id` are used as keys to ensure data normalization and avoid redundancy.

## ERD Diagram
![Crowdfunding ERD](./Resources/crowdfunding_erd.png)

## Schema Design
While a SQL databses was not used, the project still followed best practice by:
* creating clear data structures for each entity (category, subcategory, campaign, contact).
* Ensuring consistent `id` relationshipa across datasets.
* Designing the JSON outout to mimic normalized relational structures.

## Collaboration Notes
* A new GitHub repository (`Crowdfunding_ETL`) was created for the project.
* One Diana Gibson intialized the repo and added others as collaborators.
* Work was divided into seperate sections, then merged into the main Jupyter Notebook for submission.
* Regular communication ensured synchronized progress and consistant standards.

## Project Timeline
This was a one-week project. Our team ensured that at least 50% of the work was comleted by mid-week to stay on track.

## Deliverables
* Cleaned and transformed JSON files: `category.json`, `subcategory.json`, `campaign.josn`, `conatact.json`.
* Final Jupyter Notebook with all transformative steps.
* Schems-inspired data strucures used for JSON export.
* Documentation via this `README`.

## How to Run the Project
1. Clone the repository:
git clone https://github.com/digibson3/Crowdfunding_ETL.git
cd Crowdfunding_ETL
2. Open the Jupyter Notebook:
* Run the ETL process cell-by-cell.
* Final JSON files will be exported to the working directory.


