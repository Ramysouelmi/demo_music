{{ config(materialized='view', tags=['exam_queries']) }}

select
  t.track_name,
  t.composer
from {{ ref('dim_track') }} t
join {{ ref('dim_genre') }} g using (genre_id)
where g.genre_name in ('Rock','Jazz')
