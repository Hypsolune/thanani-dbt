with payments as (

    select 
        amount /100 as amount,
        id as payment_id,
        orderid as order_id,
        status,
        created as created_at
    
    from raw.stripe.payment
)

select * from payments