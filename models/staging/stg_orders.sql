-- Keep orders from 1998 onward to reduce the demo data.
select
    o_orderkey      as order_key,
    o_custkey       as customer_key,
    o_orderdate     as order_date,
    o_orderstatus   as order_status,
    o_totalprice    as order_total_price
from {{ source('tpch', 'orders') }}
where o_orderdate >= date '1998-01-01'
