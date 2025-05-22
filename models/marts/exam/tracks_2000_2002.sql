{{ config(materialized='view', tags=['exam_queries']) }}

select
  track_name
from {{ ref('dim_track') }}
where extract(year from dateadd(ms, duration_ms, '1970-01-01')) in (2000, 2002)
