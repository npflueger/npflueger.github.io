---
title: "About me"
layout: home
author_profile: true
permalink: /
redirect_from:
  - /about/
  - /about.html
curSem: "Spring 2022"
---

I am a mathematician at Amherst College, specializing in algebraic geometry and combinatorics. I teach a variety of courses at all levels at Amherst. I particularly enjoy teaching courses involving programming.

I grew up in Seattle, and still miss the mountains all around, but I am a happy East coast transplant. I enjoy the snowy winters and all the scenery around the Pioneer valley. I cycle daily along the Norwottuck Rail Trail from my home in Northampton to the Amherst campus, and can often be found exploring the surrounding area by bicycle when time allows it.
 

## {{page.curSem}} Courses:
{%- assign courses = site.teaching -%}
{%- for post in courses -%}
  {%- if page.curSem == post.semester -%}
  {%- include course-blurb.html -%}
  {%- endif -%}
{%- endfor -%}
