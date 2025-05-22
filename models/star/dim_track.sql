{{ config(materialized='table', tags=['creation_schema']) }}

select
  track_id,
  track_name,
  album_id,
  media_type_id,
  genre_id,
  composer,
  duration_ms,
  bytes,
  unit_price
from {{ ref('stg_track') }}
