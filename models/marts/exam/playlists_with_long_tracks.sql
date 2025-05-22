{{ config(materialized='view', tags=['exam_queries']) }}

select distinct
  p.playlist_name
from {{ ref('dim_playlist') }} p
join {{ ref('fact_playlist_track') }} fpt using (playlist_id)
join {{ ref('dim_track') }} t using (track_id)
where t.duration_ms > 4 * 60 * 1000
