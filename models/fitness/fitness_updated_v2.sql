-- models/fitness/fitness_updated_v2.sql



{{ config(materialized='table') }}

with fitness_data as (
    select
        id,
        activity,
        distance
    from {{ source('postgres', 'fitnessdata') }}
    where distance > 5
)

select
    id,
    activity,
    distance
from fitness_data