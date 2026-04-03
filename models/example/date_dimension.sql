WITH CTE AS (
    select

    to_timestamp(STARTED_AT) as started_at,
    date(to_timestamp(STARTED_AT)) as date_started_at,
    hour(to_timestamp(STARTED_AT)) as hour_started_at,
    {{ get_day_type('STARTED_AT') }} as day_type,
    {{ get_season('STARTED_AT') }} as station_of_year

    from {{ ref('stg_bike') }}
    --where STARTED_AT != 'started_at'
)

select * from CTE
