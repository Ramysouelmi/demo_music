{{ config(materialized='view', tags=['creation_schema']) }}

select
  PlaylistId   as playlist_id,
  TrackId      as track_id
from {{ source('music_raw','PlaylistTrack') }}
