{{ config(materialized='view', tags=['creation_schema']) }}

select
  AlbumId         as album_id,
  Title           as album_title,
  ArtistId        as artist_id,
  ProductionYear  as production_year,
  CD_number       as cd_number
from {{ source('music_raw','Album') }}
