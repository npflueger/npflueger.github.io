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

<script>
$(document).ready(function() {
  $('.toggle-bio').click(function() {
    var abstractDiv = $(this).next('.talk-bio');
    abstractDiv.toggle(); // Toggle visibility

    // Change button text based on visibility
    if (abstractDiv.is(':visible')) {
      $(this).text('Hide Bio');
    } else {
      $(this).text('Show Bio');
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

.toggle-abstract, .toggle-bio {
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

All are welcome! The talks are intended to be mostly accessible to students who have taken calculus, although they may also provide a preview of deeper waters. The colloquium talks are usually one hour long (50 + 10 minutes for questions). We usually have a 30 minute pre-talk small gathering (with snacks and refreshments) beforehand.

The 2024-2025 colloquium is organized by [Ivan Contreras](https://icontreraspalacios.people.amherst.edu/) and [David Zureick-Brown](https://dmzb.github.io/).

You might also be interested in the [Statistics Colloquium](https://nhorton.people.amherst.edu/colloquia/)


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

