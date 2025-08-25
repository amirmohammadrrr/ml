{{

    config(
        materialized = 'dynamic_table',
        tags = ['agg'],
        meta = {'owner':'amir'},
        initialize = 'on_schedule',
        enabled = true, 
        target_lag = '1 minute',
        refresh_mode = 'incremental', 
        snowflake_warehouse = 'COMPUTE_WH'
        

    )
}}

select first_name , count(*) as cnt
from customers
group by 1
