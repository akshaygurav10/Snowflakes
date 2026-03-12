select * from {{ source("AG_SOURCE_DEMO", "DEPARTMENTS") }} limit 10
