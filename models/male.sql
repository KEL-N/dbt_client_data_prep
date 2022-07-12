with source as (

    select * from {{ source("public", "_airbyte_raw_Client_Data") }}

),

final as ( 
    select _airbyte_ab_id, gender, price, _airbyte_client_data_hasid 
    from source 
)

select * from final where gender='Male'order by 2 asc