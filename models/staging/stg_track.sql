{{ config(materialized='view', tags=['creation_schema']) }}

select
  TrackId      as track_id,
  Title        as track_name,
  AlbumId      as album_id,
  MediaTypeId  as media_type_id,
  GenreId      as genre_id,
  Composer     as composer,
  Milliseconds as duration_ms,
  Bytes        as bytes,
  UnitPrice    as unit_price
from {{ source('music_raw','Track') }}
