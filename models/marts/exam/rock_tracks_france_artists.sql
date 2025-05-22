{{ config(materialized='view', tags=['exam_queries']) }}

select
  t.track_name,
  ar.artist_name
from {{ ref('dim_track') }} t
join {{ ref('dim_genre') }} g using (genre_id)
join {{ ref('dim_album') }} a using (album_id)
join {{ ref('dim_artist') }} ar using (artist_id)
where g.genre_name = 'Rock'
  and ar.country = 'France'
