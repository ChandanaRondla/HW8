with filtered_user_sessions as (
    select
        sessionId,
        ts
    from {{ source('raw_data', 'session_timestamp') }}
    where sessionId is not null
)
select *
from filtered_user_sessions
