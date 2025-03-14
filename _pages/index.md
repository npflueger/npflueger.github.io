---
title: "About me"
layout: home
author_profile: true
permalink: /
redirect_from:
  - /about/
  - /about.html
---

{%- assign current_date = site.time | date: "%Y-%m" -%}
{%- assign current_year = site.time | date: "%Y" | plus: 0 -%}
{%- assign current_month = site.time | date: "%m" | plus: 0 -%}

{%- assign semester = "" -%}
{%- if current_month < 6 -%}
  {%- assign semester = "Spring " | append: current_year -%}
{%- else -%}
  {%- assign semester = "Fall " | append: current_year -%}
{%- endif -%}



I am a mathematician at Amherst College, specializing in algebraic geometry and combinatorics. Much of my work revolves around connections between Young tableaux and algebraic curves. My teaching includes courses at all levels, and I particularly enjoy teaching courses involving programming.

I grew up in Seattle, and still miss the mountains all around, but I am a happy East coast transplant. I enjoy the snowy winters and all the scenery around the Pioneer valley. When time and childcare schedules allow it, I cycle along the Norwottuck Rail Trail from my home in Northampton to the Amherst campus, and can be found exploring the surrounding area by bicycle.

My family pronounces our last name "fleeger." This is not the original German pronunciation, and I will happily answer to anything reasonable. 

I help organize the department Putnam training sessions, together with [Joe Kraisler](https://sites.google.com/view/jkraisler/).


## {{semester}} Courses:
{%- assign courses = site.teaching -%}
{%- for post in courses -%}
  {%- if semester == post.semester -%}
  {%- include course-blurb.html -%}
  {%- endif -%}
{%- endfor -%}

## Office hours
{% include helphours.md %}
