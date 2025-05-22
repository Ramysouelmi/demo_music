{{ config(materialized='view', tags=['creation_schema']) }}

select
  GenreId    as genre_id,
  Name       as genre_name
from {{ source('music_raw','Genre') }}
