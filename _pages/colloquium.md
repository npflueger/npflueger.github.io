---
title: "Amherst College Math Colloquium"
layout: single
permalink: /colloquium/
no_sidebar: true
no_masthead: true
toc: false
---

<script>
$(document).ready(function() {
  $('.toggle-abstract').click(function() {
    var abstractDiv = $(this).next('.talk-abstract');
    abstractDiv.toggle(); // Toggle visibility

    // Change button text based on visibility
    if (abstractDiv.is(':visible')) {
      $(this).text('Hide Abstract');
    } else {
      $(this).text('Show Abstract');
    }
  });
});
</script>


<style>
.seminar-talk {
  margin-bottom: 20px;
}

.talk-title {
  display: inline-block;
  margin-right: 10px;
}

.toggle-abstract {
  background-color: #007BFF;
  color: white;
  border: none;
  padding: 2px 5px;
  cursor: pointer;
  border-radius: 5px;
}

.toggle-abstract:hover {
  background-color: #0056b3;
}
</style>

The Amherst College Math Colloquium is a series of talks for undergraduates.

All are welcome! The talks are intended to be mostly accessible to students who have taken calculus, although they may also provide a preview of deeper waters. 

The 2023-2024 colloquium is organized by [Ivan Contreras](https://icontreraspalacios.people.amherst.edu/) and [Nathan Pflueger](https://npflueger.github.io).


{% assign cur_date = 'now' | date: "%Y-%m-%d" %}
## Upcoming talks
{% assign talks = site.data.colloquium | sort: 'date' %}
{% for talk in talks %}
  {% if talk.date >= cur_date %} {% include talk-entry.html talk=talk %} {% endif %}
{% endfor %}

## Past talks
{% assign talks = site.data.colloquium | sort: 'date' | reverse %}
{% for talk in talks %}
  {% if talk.date < cur_date %} {% include talk-entry.html talk=talk %} {% endif %}
{% endfor %}

