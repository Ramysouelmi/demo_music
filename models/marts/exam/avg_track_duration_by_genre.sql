{{ config(materialized='view', tags=['exam_queries']) }}

select
  g.genre_name,
  avg(t.duration_ms) as avg_duration_ms
from {{ ref('dim_track') }} t
join {{ ref('dim_genre') }} g using (genre_id)
group by g.genre_name
