---
hide:
  - navigation
  - toc
---

{% macro project_card(project) %}
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
{% endmacro %}

<div class="hero" markdown>

# Robert H Cudmore, PhD {.hero-title}

I build scientific software that transforms biological data into reproducible quantitative results. My work is focused on online scientific data sharing, algorithm design, and visualization tools for desktop and web.

</div>

{% set ns = namespace(types=[]) %}
{% for project in projects %}
  {% if project.project_type not in ns.types %}
    {% set ns.types = ns.types + [project.project_type] %}
  {% endif %}
{% endfor %}

{% for project_type in ns.types %}
<div class="project-section" markdown aria-label="{{ project_type }}">

<div class="project-grid" markdown>

{% for project in projects if project.project_type == project_type %}
{{ project_card(project) }}
{% endfor %}

</div>

</div>
{% endfor %}
