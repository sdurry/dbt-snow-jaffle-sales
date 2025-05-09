with countries as (

    select *
    from {{ ref('country') }}

), renamed as (

    select
        country as country_code,
        name as country_name
    from countries

)

select *
from renamed
