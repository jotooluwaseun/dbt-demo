{% macro get_season(input) %}

 case
    when month(to_timestamp({{ input }})) in (12, 1, 2) then 'WINTER'
    when month(to_timestamp({{ input }})) in (3, 4, 5) then 'SPRING'
    when month(to_timestamp({{ input }})) in (6, 7, 8) then 'SUMMER'
    else 'AUTUMN'
    end

{% endmacro %}

{% macro get_day_type(input) %}

case
    when dayname(to_timestamp({{ input }})) in ('Sat', 'Sun')
    then 'WEEKEND'
    else 'BUSSINESSDAY'
    end

{% endmacro %}