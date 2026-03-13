{%  macro get_season(x) %}

    CASE 
    WHEN MONTH(TO_TIMESTAMP({{ x }})) IN (12,1,2) THEN 'WINTER'
    WHEN MONTH(TO_TIMESTAMP({{ x }})) IN (3,4,5) THEN 'SUMMER'
    ELSE 'SPRING'
END


{% endmacro %}