{{ config(materialized='table', tags=['creation_schema']) }}

select
  album_id,
  album_title,
  artist_id,
  production_year,
  cd_number
from {{ ref('stg_album') }}
