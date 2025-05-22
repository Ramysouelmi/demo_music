{{ config(materialized='view', tags=['exam_queries']) }}

select
  album_title
from {{ ref('dim_album') }}
where cd_number > 1
