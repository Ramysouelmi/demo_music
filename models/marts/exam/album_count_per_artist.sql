{{ config(materialized='view', tags=['exam_queries']) }}

select
  ar.artist_name,
  count(distinct a.album_id) as albums_count
from {{ ref('dim_artist') }} ar
join {{ ref('dim_album') }} a using (artist_id)
group by ar.artist_name
