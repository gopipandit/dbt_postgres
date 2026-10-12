
{% macro tax_amount(amount, rate) %}
    {{ amount }} * (1 + {{ rate }})
{% endmacro %}
      