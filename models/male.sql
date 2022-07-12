with source as (

    select * from {{ ref('client_data') }}

),

final as ( 
    select _airbyte_ab_id, firstname, gender, price,_airbyte_client_data_hasid 
    from source 
)

select * from final where gender='Male'order by 2 asc