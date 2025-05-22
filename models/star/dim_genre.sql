{{ config(materialized='table', tags=['creation_schema']) }}

select
  genre_id,
  genre_name
from {{ ref('stg_genre') }}
