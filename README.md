
# Ejercicio Analytics Engineerin
Descripción del ejercicio: https://github.com/DeaAnalytics/test-analytics-engineering

# Preparación de ambiente
- poetry new acero
- poetry add dbt-core dbt-bigquery
- cd acero/acero
- poetry run dbt init
- - nombre de proyecto: mkt

# 1 y 2. Configuración GCP
- Cuenta GCP, definir proyecto y dataset
- Crea nueva tabla raw_bank_marketing a partir de https://archive.ics.uci.edu/dataset/222/bank+marketing
- Crea archivo de credenciales JSON con perfil gcp_bigquery-admin y referencialo en archivo profiles.yml
- poetry run dbt debug

# 3. Modelado
- Modelo stg_bank_marketing.sql para normalizar limpiar
- Modelo kpi_bank_marketing.sql para preparar dimensiones y medidas KPI

# 4. Pruebas
- En schema.yml definicion de modelo stg_bank_marketing
- - Tipo de dato
- - Constrains
- - Pruebas generica aplicada por columna
- Pruebas generales:
- - Revisar unicidad de campos
- - Regla de negocio de campos "duration" y "Y"