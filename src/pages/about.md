---
title: About
headingslugs:
- imprint
- privacystatement
- disclaimer
---
{% assign sections = site.data.imprint.sections %}
<nav>
  <ul class="d-flex flex-wrap nav nav-pills list-inline justify-content-center">
    {% for slug in page.headingslugs %}
    <li class="nav-item list-inline-item">
      <a {% if false %}
      class="nav-link active text-decoration-none" aria-current="true" href="{{ slug | prepend: '#'}}"
      {% else %}
      class="nav-link text-decoration-none" aria-current="false" href="{{ slug | prepend: '#'}}"
      {% endif %}>
      {{ page.url }}
      {{ item.link }}
      {{ sections[slug].name }}
      </a>
    </li>
    {% endfor %}
  </ul>
</nav>

<a id="imprint"></a>

## Imprint

### Legal Disclosure

Jillian Augustine-Rubak

1050 Vienna, Austria

Email: <jaugur.ds@gmail.com>

<a id="privacystatement"></a>

## Privacy Statement

### Web Analysis with Google Analytics

This website uses Google Analytics, a web analysis service of Google Inc. ("Google"). Google Analytics uses cookies, i.e. text files stored on your computer to enable analysis of website usage by you. Information generated by the cookie about your use of this website is usually transmitted to a Google server in the United States and stored there. This website, however, uses IP anonymization. In case of activated IP anonymization, your IP address is previously truncated by Google within member states of the European Union or in other states which are party to the agreement on the European Economic Area. Only in exceptional cases is a full IP address transmitted to a Google server in the United States and truncated there. On behalf this website’s owner, Google will use this information to evaluate your use of the website, compile reports about website activities, and provide the website’s operator with further services related to website and Internet usage. The IP address sent from your browser as part of Google Analytics is not merged with other data by Google.

You can prevent storage of cookies by appropriately setting your browser software; in this case, however, please note that you might not be able to fully use all functions offered by this website. In addition, you can prevent data generated by the cookie and relating to your use of the website (including your IP address) from being collected and processed by Google, by downloading and installing a browser plug-in from the following link: [http://tools.google.com/dlpage/gaoptout?hl=en](http://tools.google.com/dlpage/gaoptout?hl=en)

### Information about cookies

1. To optimize the functionality of this website I use cookies. These are small text files stored in your computer’s main memory and permit its recognition on your next visit. This allows me to improve your experience on this site.
2. You can prevent storage of cookies by choosing a “disable cookies” option in your browser settings. But this can impair your experience of the website as a result.

<a id="disclaimer"></a>

## Disclaimer

### Third-Party Content

Responsibility for the content of external links (to web pages of third parties) lies solely with the operators of the linked pages. No violations were evident to myself at the time of linking. Should any legal infringement become known to myself, I will remove the respective link immediately.