{% test not_empty_str(model,column_name) %}

    select {{column_name}}
    from {{model}}
    where TRIM({{column_name}}) = ''

{% endtest %}