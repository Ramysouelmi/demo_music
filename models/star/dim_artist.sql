{{ config(materialized='table', tags=['creation_schema']) }}

select
  artist_id,
  artist_name,
  birth_year,
  country
from {{ ref('stg_artist') }}
