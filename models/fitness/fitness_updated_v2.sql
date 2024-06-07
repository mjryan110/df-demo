-- models/fitness/fitness_updated_v2.sql

{{ config(materialized='table') }}

with fitness_data as (
    select
        id,
        swim,
        bike,
        run
    from {{ source('postgres', 'fitness') }}  
)

select
    *
from fitness_data
