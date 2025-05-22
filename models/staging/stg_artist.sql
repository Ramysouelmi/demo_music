{{ config(materialized='view', tags=['creation_schema']) }}

select
  ArtistId    as artist_id,
  Name        as artist_name,
  BirthYear   as birth_year,
  Country     as country
from {{ source('music_raw','Artist') }}
