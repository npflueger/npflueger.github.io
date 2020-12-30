{%- assign hours_list = site.helphours  where_exp:"hours", "hours.semester == page.semester"  where_exp:"hours", "hours.coursenum == nil or hours.coursenum == page.coursenum" -%}
{%- for hours in hours_list -%}
{{ hours.content }}
{%- else -%}
* To be determined.
{%- endfor -%}
