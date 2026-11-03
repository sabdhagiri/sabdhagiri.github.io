---
layout: default
title: Resume
permalink: /resume/
---

<div class="page-intro">
    <h1>Resume</h1>
    <p class="lead">Platform engineering, SRE, and cloud infrastructure.</p>
    <div class="button-group">
        <a href="{{ site.resume_pdf | relative_url }}" class="btn btn-primary" download="sabdhagiri-resume.pdf">Download PDF</a>
        <a href="{{ site.resume_pdf | relative_url }}" class="btn btn-secondary" target="_blank" rel="noopener">Open in new tab</a>
    </div>
</div>

<div class="resume-viewer">
    <object data="{{ site.resume_pdf | relative_url }}" type="application/pdf" aria-label="Resume PDF">
        <p class="empty-state">Your browser can't display the PDF inline.
            <a href="{{ site.resume_pdf | relative_url }}" download="sabdhagiri-resume.pdf">Download the resume</a> instead.</p>
    </object>
</div>
