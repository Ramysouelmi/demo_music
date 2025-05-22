{{ config(materialized='view', tags=['exam_queries']) }}

select
  a.album_title,
  sum(t.duration_ms) as total_length_ms
from {{ ref('dim_album') }} a
join {{ ref('dim_track') }} t using (album_id)
group by a.album_title
order by total_length_ms desc
limit 10
