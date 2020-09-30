---
title: 'arXiv Labs showcase'
projects:
  bibliographic_overlay:
    title: arXiv Bibliographic Explorer
    repo: https://github.com/mattbierbaum/arxiv-bib-overlay
    thumbnail: images/bib-explorer.png
    collaborators:
    - name: Matt Bierbaum
      association: Cornell Computing and Information Science
    summary: |
      The arXiv bibliographic overlay displays information about works that cite
      and are cited by arXiv papers and their published versions. The primary
      objective of the project is to enable discovery of relevant research and
      context by providing user-friendly navigation of an article's citation
      tree.
  HTML5_readability:
    title: arXiv HTML5 & Readability
    repo: https://github.com/cul-it/arxiv-readability
    thumbnail: images/readability.png
    collaborators:
    - name: Michael Kohlhase
      association: Friedrich-Alexander Universität Erlangen-Nürnberg
    - name: Ben Firschman
      association: arXiv-Vanity
    - name: Deyan Ginev
      association: Friedrich-Alexander Universität Erlangen-Nürnberg
    summary: |
      Our top priority is to provide a high-quality service to all arXiv authors
      and readers. The overarching objective of this project is to significantly
      improve the usability and accessibility of arXiv papers. While providing
      HTML is not a panacea, it is a first step in the right direction.
  core_recommender:
    title: CORE Recommender
    thumbnail: images/core-recommender.png
    more_info:
    - name: arXiv:1705.00578
      link: https://arxiv.org/abs/1705.00578
    - name: Research outputs by CORE
      link: https://core.ac.uk/about/research-outputs/
    collaborators:
    - name: CORE Team
      link: https://core.ac.uk/about/#team
    summary: |
      Explore relevant open access papers from across a global network of
      research repositories while browsing arXiv. Research papers are
      recommended from both arXiv and other over 10 thousand open access data
      providers and brought to you by
      <a href="https://core.ac.uk/" target="_blank" rel="noopener">CORE</a>,
      the world’s largest aggregator of open access research.
---

{% macro render_project(project) %}
<article class="card">
  <div class="card-content">
    <div class="columns">
      <div class="column is-narrow-tablet">
        <p class="image is-128x128" style="border: 1px solid gray"><img src="{{project.thumbnail}}" alt="" /></p>
      </div>
      <div class="column is-one-third-desktop is-one-half-tablet">
        <h2>{{ project.title }}</h2>
        <span class="label">Collaborator{%- if project.collaborators|length > 1 -%}s{%- endif -%}: </span>
        {% for collaborator in project.collaborators %}
        <p>{% if collaborator.link %}<a href="{{ collaborator.link }}" target="_blank" rel="noopener">{{ collaborator.name }}</a>{% else %}{{ collaborator.name }}{% endif %}<br />
        {%- if collaborator.association -%}
        <em>{{ collaborator.association }}</em></p>
        {%- endif -%}
        {% endfor %}
      </div>
      <div class="column">
        <p>{{ project.summary|safe }}</p>
      </div>
    </div>
    {%- if project.repo -%}
    <p class="has-text-right"><span class="has-text-weight-bold">
      Code: </span>{{ project.repo }}</p>
    {%- endif -%}
    {%- if project.more_info -%}
    <p class="has-text-right"><span class="has-text-weight-bold">
      More Information: </span><br/>
      {%- for info in project.more_info -%}
      <a href="{{ info.link}}" target="_blank" rel="noopener">{{ info.name }}</a><br/>
      {%- endfor -%}
    </p>
    {%- endif -%}
  </div>
</article>
{% endmacro %}


# arXiv Labs

arXiv is surrounded by a community of researchers and developers
working at the cutting edge of information science and technology.

While the arXiv team is focused on our core mission—providing rapid
dissemination of research findings at no cost to readers and
submitters—we are excited to be experimenting with a small number of
collaborators on projects that add value for our stakeholders and
advance research.

Here are some of the projects that our collaborators are working on right now.

{{ render_project(page.meta.projects.core_recommender) }} 
{{ render_project(page.meta.projects.bibliographic_overlay) }}

We are grateful to the [volunteer developers](https://arxiv.org/about/people/developers) who contribute to the arXiv codebase and invite you to get involved. Please see our [guidelines for contributors](https://github.com/arXiv/.github/blob/master/CONTRIBUTING.md), or contact nextgen@arxiv.org, for more information about contributing to arXiv software development.
