{% test is_natural_number(model,column_name) %}

    select {{column_name}}
    from {{model}}
    where {{column_name}} < 1

{% endtest %}