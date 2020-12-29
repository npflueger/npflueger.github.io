{% for hours in site.helphours %}
{% if page.semester == hours.semester %}
{% unless hours.coursenum and hours.coursenum != page.coursenum %}
{{ hours.content }}
{% endunless %}
{% endif %}
{% endfor %}
