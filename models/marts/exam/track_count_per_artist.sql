{{ config(materialized='view', tags=['exam_queries']) }}

select
  ar.artist_name,
  count(t.track_id) as tracks_count
from {{ ref('dim_artist') }} ar
join {{ ref('dim_album') }} a using (artist_id)
join {{ ref('dim_track') }} t using (album_id)
group by ar.artist_name
