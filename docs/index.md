---
hide:
  - navigation
  - toc
---

{% macro card_section(project, show_icon) %}
<div class="card-section" markdown>

{% if show_icon and project.icon | default %}
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
  "pypi": ":octicons-package-24:",
  "web-app": ":octicons-arrow-up-right-24:"
} %}
{% for link in project.links if link.type != "live" -%}
[{{ link_icons[link.type] }} {{ link.label }}]({{ link.url }}){ .md-button }
{% endfor %}

</div>

</div>
{% endmacro %}

{% macro project_card(project, companion) %}
<div class="project-card" markdown>
{{ card_section(project, true) }}
{% if companion %}
{{ card_section(companion, false) }}
{% endif %}
</div>
{% endmacro %}

<div class="hero" markdown>

# Robert H Cudmore, PhD {.hero-title}

I build scientific software that transforms biological data into reproducible quantitative results. My work is focused on algorithm design, visualization tools for desktop and web, and online scientific data sharing. 

</div>

{% set ns = namespace(types=[], companions=[]) %}
{% for project in projects if project.companion | default(none) %}
  {% set ns.companions = ns.companions + [project.companion] %}
{% endfor %}
{% for project in projects if project.name not in ns.companions %}
  {% if project.project_type not in ns.types %}
    {% set ns.types = ns.types + [project.project_type] %}
  {% endif %}
{% endfor %}

{% for project_type in ns.types %}
<div class="project-section" markdown>

<h2 class="project-section-title">{{ project_type }}</h2>

<div class="project-grid" markdown>

{% for project in projects if project.project_type == project_type and project.name not in ns.companions %}
{% set found = namespace(companion=none) %}
{% if project.companion | default(none) %}
  {% for other in projects if other.name == project.companion %}
    {% set found.companion = other %}
  {% endfor %}
{% endif %}
{{ project_card(project, found.companion) }}
{% endfor %}

</div>

</div>
{% endfor %}
