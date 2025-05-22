{{ config(materialized='view', tags=['exam_queries']) }}

with tracks_2000s as (
  select *
  from {{ ref('dim_track') }}
  where extract(year from dateadd(ms, duration_ms, '1970-01-01')) between 2000 and 2009
)
select
  g.genre_name,
  count(*) as play_count
from tracks_2000s t
join {{ ref('dim_genre') }} g using (genre_id)
group by g.genre_name
order by play_count desc
limit 1
