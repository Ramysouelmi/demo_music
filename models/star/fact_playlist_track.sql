{{ config(materialized='table', tags=['creation_schema']) }}

select
  playlist_id,
  track_id
from {{ ref('stg_playlisttrack') }}
