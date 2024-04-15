---
runme:
  id: 01HT2CXS16J0M3ZQSY9RA6S4MP
  version: v3
---

```sh {"id":"01HT2CXZ5TCWDYDZ9M2RH2HVNW"}
Challenge 1

Read the data from the data/child_index_2023.csv file, cleanse it and store the data
in the localhost/country_score sql database

The connection string to use is:

```

connection_string = "mssql+pyodbc://dev:dev@localhost/country_score?driver=ODBC+Driver+17+for+SQL+Server"

```sh {"id":"01HVGF6HAXTAJN8S4T3PXAG2WA"}

Your are welcome to modify the country_score database and lookup anything you need to on the
internet.

Save the country_id, index_score and outcome_score to the child_indexes table that was loaded from the file.

Challenge 2

Draw and explain a system design to ingest real time data used to drive trading apps. Use the draw.io file to do so.

```