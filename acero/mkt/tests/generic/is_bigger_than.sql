{% test is_bigger_than(model, column_name, number) %}

    select {{column_name}}
    from {{model}}
    where {{column_name}} <= {{number}}

{% endtest %}