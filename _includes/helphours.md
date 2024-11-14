{%- if semester == nil or semester == "" -%}
  {%- assign semester = page.semester -%}
{%- endif -%}

{%- assign semhours = site.helphours | where_exp:"hours", "hours.semester == semester"  -%}
{%- assign genhours = semhours | where:"coursenum", "all" -%}
{%- assign spechours = semhours | where_exp:"hours", "hours.coursenum == page.coursenum" -%}
{%- assign allhours = genhours | concat:spechours -%}

{%- for hours in allhours -%}
{{ hours.content }}
{%- else -%}
* To be determined.
{%- endfor -%}
