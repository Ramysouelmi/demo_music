{{ config(materialized='view', tags=['creation_schema']) }}

select
  PlaylistId   as playlist_id,
  Name         as playlist_name
from {{ source('music_raw','Playlist') }}
