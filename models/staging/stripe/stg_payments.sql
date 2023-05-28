with source as(

    select * from {{ source('stripe', 'payment') }}
),


payments as (

    select 
        amount /100 as amount,
        id as payment_id,
        orderid as order_id,
        status,
        created as created_at
    
    from source
)

select * from payments