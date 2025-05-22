{{ config(materialized='view', tags=['exam_queries']) }}

select distinct
  p.playlist_name
from {{ ref('dim_playlist') }} p
join {{ ref('fact_playlist_track') }} fpt using (playlist_id)
join {{ ref('dim_track') }} t using (track_id)
join {{ ref('dim_album') }} a using (album_id)
join {{ ref('dim_artist') }} ar using (artist_id)
where coalesce(ar.birth_year, 9999) < 1990
