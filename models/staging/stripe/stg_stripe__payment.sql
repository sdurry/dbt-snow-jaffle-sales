with 

source as (

    select * from {{ source('stripe', 'payment') }}

),

renamed as (

    select
        id as payment_key,
        orderid as order_key,
        paymentmethod as payment_method,
        status as payment_status,
        amount as amount_paid_in_usd,
        created as created_at,
        _batched_at

    from source

)

select * from renamed
