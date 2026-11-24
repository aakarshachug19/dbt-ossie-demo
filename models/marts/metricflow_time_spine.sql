
-- MetricFlow requires a daily time spine.
-- Generate one calendar row per day from 1990 through 2044.

with days as (
    select
        dateadd(day, seq4(), date '1990-01-01') as date_day
    from table(generator(rowcount => 20000))
)

select date_day
from days
where date_day < date '2045-01-01'
