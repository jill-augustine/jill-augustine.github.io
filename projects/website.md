---
layout: project
title: Building jill.codes
subtitle: November 2020
tag: project
---

In Autumn 2020, I took on the challenge to rebuild my website. My experience in front-end web development until this time was [A Shiny Web App](/projects/shiny.html). My previous website was based on [Bookdown](https://bookdown.org/), a common R package used to create many of the free R resources found on my [Useful Resources](/resources.html).
<div class=row>
<div class=column>
  <img src="/assets/img/website2018_light.png" alt="My former bookdown website in light mode">
  <p class=caption>Light mode</p>
  </div>
<div class=column>
  <img src="/assets/img/website2018_dark.png" alt="My former bookdown website in dark mode">
  <p class=caption>Dark mode</p>
  </div>
</div>

This time I decided to use [Jekyll](https://jekyllrb.com/) to create a static website with a more flexible layout. Using Jekyll I wrote web pages using markdown files which were then built into .html files. I decided not to write pages directly in .html files because I wanted to easily distinguish between built pages and pages I wrote myself.

I first looked for a jeykll template which I could adapt to my own requirements. I chose the [Pudhina](https://github.com/knhash/Pudhina) theme for its visual simplicity. The code used for this template was simple and therefore easy to adapt.

## Cascading Style Sheets (CSS)

In creating this site I had to change many of the css settings in the default template. As the template had only one main.css file, I first copied main.css into the _sass subfolder (which is specially recognised by Jekyll whilst building) and renamed it _pudhinamain.scss. I then created main.scss in which imported both _pudhinamain.scss and my additional .scss file into main.scss. 

Changes included:
- creating a profile_pic class for displaying the photo on the home page
- updating the width of the video class
- adding a project_menu class with a reduced font size to display project names
- update the body class to use the [Catamaran font](https://fonts.google.com/specimen/Catamaran)
- multiple adjustments to the layout when viewed on a screen with less than 500px width

When updating the colours used for background, text, links and headings, I made sure all colours used had a [contrast ratio](https://web.dev/color-and-contrast-accessibility/) with the background colour of at least 4.5:1. 

When updateing font sizes, I used percentage values only because non-relative font sizes are not accessible to users with limited vision [(more info)](https://developer.mozilla.org/en-US/docs/Web/CSS/font-size).

## Using YAML files to store lists

To make creating links between different pages easier, I created three YAML files in the _data subfolder (recognised by Jeykll) to store lists of page navigation, subpage navigation (projects), and twitter recommendations. This means items can be easily added to the list and the content refering to these lists will update accordingly in the next build. This means I do not directly have to edit markdown or HTML content if I add an item to the list. 

## Page Templates

The original Pudhina template came with two page layouts which I adapted for this site. For the default template, I split header.html into header.html and main_navigation.html. This was to allow more flexibility when using different layouts.

I also created a 'project' layout which made use of a custom navigation in which subpages of the 'Projects' page also had the link to 'Projects' highlighted. 

Finally, I updated the styling element of the default and project-specific layouts to test different [Google Font](https://fonts.google.com/) options.
 
## More Information

The code for this website can be found in the [GitHub Repository](https://github.com/jill-augustine/jill-augustine.github.io).