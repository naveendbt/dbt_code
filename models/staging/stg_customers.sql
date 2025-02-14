{{ config(materialized='table') }}

WITH tb1 as(
    select
    id as customer_id,
    first_name,
    last_name
    from {{source('datafeed_shared_schema','raw_customer')}})
select * from tb1