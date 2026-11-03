---
layout: default
title: sabdhagiri
---

<div class="hero-section">
    <h1>Hello. I'm sabdhagiri.</h1>
    <p class="lead">Tech Explorer. Content Creator. Always debugging life.</p>
    <div class="button-group">
        <a href="{{ site.resume_pdf | relative_url }}" class="btn btn-primary" download="sabdhagiri-resume.pdf">Download Resume</a>
        <a href="{{ '/contact/' | relative_url }}" class="btn btn-secondary">Contact</a>
    </div>
</div>

<section class="bio">
    <h2>Core Expertise</h2>
    <p class="lead">
        I specialize in building self-healing platform foundations by integrating Infrastructure-as-Code (IaC), GitOps, and advanced observability patterns (SRE). My focus lies at the intersection of distributed systems engineering, Cloud Governance, and FinOps.
    </p>
    <div class="skills">
        <span>☁️ Multi-Cloud (AWS, GCP, Azure)</span>
        <span>☸️ Kubernetes/EKS/GKE</span>
        <span>📚 Terraform &amp; Ansible (IaC)</span>
        <span>📈 SRE/Observability (Prometheus, Grafana)</span>
        <span>🧩 Distributed Backend (Python, C#)</span>
    </div>
</section>

{% if site.posts.size > 0 %}
<section class="latest">
    <h2>Latest from the Journal</h2>
    <ul class="post-list">
        {% for post in site.posts limit:3 %}
        <li>
            <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%b %-d, %Y" }}</time>
            <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
        </li>
        {% endfor %}
    </ul>
    <a href="{{ '/journal/' | relative_url }}" class="more-link">All entries &rarr;</a>
</section>
{% endif %}
