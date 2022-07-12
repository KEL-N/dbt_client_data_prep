with source as (

    select * from {{ source("public", "_airbyte_raw_Client_Data") }}

),

final as ( 
    select _airbyte_ab_id
    from source 
)

select * from final where gender='Male'order by 2 asc