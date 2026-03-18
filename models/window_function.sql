with windows_function as(

    select 
    hire_date,
    department_id,
     count(employee_id)
    from {{ source('AG_SOURCE_DEMO', 'EMPLOYEES') }}
    group by hire_date,department_id
    QUALIFY row_number() OVER (PARTITION BY HIRE_DATE ORDER BY count(employee_id) ) = 1
    order by hire_date
)
SELECT * FROM windows_function