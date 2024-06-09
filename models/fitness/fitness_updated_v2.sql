-- models/fitness/fitness_updated_v2.sql

{{ config(materialized='view') }}

with fitness_data as (
    select
        id,
        swim,
        bike,
        run
    from {{ source('postgres', 'fitness') }}
    limit 15
)

select
    id,
    swim,
    bike,
    run
from fitness_data