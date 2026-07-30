---
hide:
  - navigation
  - toc
---

<div class="hero" markdown>

# Robert H. Cudmore {.hero-title}

I build scientific software that transforms biological data into reproducible quantitative measurements. My current work is focused on desktop, web, and Python tools for analysis, visualization, and sharing.

</div>

<div class="project-grid" markdown>

{% for project in projects %}
<div class="project-card" markdown>

{% if project.icon | default %}
<div class="card-icon-wrap">
<img src="assets/{{ project.icon }}" class="card-icon{% if project.icon_background | default == "light" %} card-icon--light-bg{% endif %}" alt="{{ project.name }}">
</div>
{% endif %}
<div class="card-top">
<div class="card-top-left">
<div class="card-title"><strong>{{ project.name }}</strong></div>
{% for link in project.links if link.type == "live" %}
<div class="card-demo"><a href="{{ link.url }}" class="md-button card-web-demo" target="_blank" rel="noopener"><span class="card-live-icon" aria-hidden="true">↗</span> {{ link.label }}</a></div>
{% endfor %}
</div>
</div>

{{ project.description }}

<div class="card-links" markdown>

{% set link_icons = {
  "github": ":octicons-mark-github-24:",
  "docs": ":octicons-book-24:",
  "pubmed": ":octicons-mortar-board-24:",
  "pypi": ":octicons-package-24:"
} %}
{% for link in project.links if link.type != "live" -%}
[{{ link_icons[link.type] }} {{ link.label }}]({{ link.url }}){ .md-button }
{% endfor %}

</div>

</div>
{% endfor %}

</div>
