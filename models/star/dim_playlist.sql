{{ config(materialized='table', tags=['creation_schema']) }}

select
  playlist_id,
  playlist_name
from {{ ref('stg_playlist') }}
