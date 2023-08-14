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

The Amherst College Math Colloquium is a series of talks aimed at undergraduates.

IOU: some information about whom the talks are aimed at, what background is assumed, etc.


{% assign cur_date = 'now' | date: "%Y-%m-%d" %}
## Upcoming talks
{% for talk in site.data.colloquium | sort: 'date' %}
  {% if talk.date >= cur_date %} {% include talk-entry.html talk=talk %} {% endif %}
{% endfor %}

## Past talks
{% for talk in site.data.colloquium | sort: 'date' | reverse %}
  {% if talk.date < cur_date %} {% include talk-entry.html talk=talk %} {% endif %}
{% endfor %}

