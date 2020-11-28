---
layout: page
title: Useful Resources
subtitle: A list of resources I often use and recommend
headings: [Documentation, Books, Social, Podcasts, Cheatsheets]
---
<div class="navigation">
    <ul class='project_menu'>
    {% for item in page.headings %}
    <li class='menu__entry'><a href="{{ item | downcase | prepend: '#'}}">
      {{ item }}
    </a></li>
    {% endfor %}
    </ul>
</div>
<br>
<a id="documentation"></a>
## Documentation (API References)

Whenever I am coding I have mutliple documentation pages open. It's not possible to remember how every single function is used. I'm a big fan of documentation so clicking through the "related functions" lets me discover new functions which are sometimes even more suited to what I want to do.

[RDocumentation](https://www.rdocumentation.org/)

The content of the help section of RStudio but a much better use interface. Allows you to have multiple tabs open relating to different functions/packages.

[Pandas](http://pandas.pydata.org/pandas-docs/stable/)

Pandas is used for handling data structured in dataframes with column names. This documentation is best viewed using the search function.

[Numpy](https://numpy.org/doc/stable/reference/index.html)

I see Numpy as the stripped down version of pandas. It is highly optimised for vector and matrix calculations. In my excperience, repeated calculations on a numpy array are much quicker than the equivalent calculations on a pandas DataFrame.

[Scipy](https://docs.scipy.org/doc/scipy/reference/#api-reference)

Scipy is like Numpy with a statistical boost. It is a collection of more statistics-focussed functions and works well with numpy and Pandas. It also forms the basis of many scikit learn methods.

[scikit learn](https://scikit-learn.org/stable/modules/classes.html)

scikit-learn is a collection of machine learning algorithms and preprocessors for use in python. It is primarily based on numpy arrays and scipy but also handles pandas DataFrames well too.

[pyspark](https://spark.apache.org/docs/2.2.0/api/python/index.html)

Although the search function is not the best, this is also essential whenever manipulating datasets using spark.

[Plotly (for Python) Open Source Guide](https://plotly.com/python/plotly-fundamentals/)

This is an overall user guide for plotly visualisations. I find it really useful for finding out how to define the smaller specifics of visualisations. If you are a fan of visualisation like I am, this is a great set of packages to get familiar with.

[Plotly Express Guide (Python)](https://plotly.com/python/plotly-express/)

This documenations is for **Plotly Express**, the high-level interface/API for creating interactive JS-based visualisations.

[Plotly (for Python) Figure Reference](https://plotly.com/python/reference/index/)

This is my go-to for all (detailed) things plotly. It is the complete API guide for Figures. If you are already familiar with plotly Figures and want to find out all there is to know, reading this will give you the answers. I strongly recommend using the "magic underscores" when using plotly rather than nested dictionaries. 

[caret](https://topepo.github.io/caret/)

In particular sections 6 and 7 list the available models. Sections 3, 4 & 5 also describe some key principles of machine learning and how you can implement them using caret.

[Regular Expressions (regex) Tester](http://regexstorm.net/tester?p=(%3f%3C%3d%5c%5b)%5b%5e0-9%5d&i=%5babc%5d+pass%0d%0a%5bcxvjk234%5d+pass%0d%0a%5b123%5d+fail&o=e)

A great tool to check if a pattern successfully recognises characters in a given input. Helps to understand unexpected outputs of code.

[colorbrewer2](http://colorbrewer2.org)

A colour-selection tool developed by [Prof. Cynthia Brewer](https://en.wikipedia.org/wiki/Cynthia_Brewer). I use this tool to select the best colours for my visualisations. I particularly like the "colorblind safe" option. This tool works great in combination with some of the principles of O. Wilke's book (see below)

[w3schools](https://www.w3schools.com/sql/default.asp)

I use this to brush up on my SQL and HTML knowledge. The instructions are clear and the site is easy to navigate.

[MDN CSS Reference](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference)

A comprehensive API reference to CSS including interactive examples.

[stackoverflow](https://stackoverflow.com/questions/30560241/is-it-possible-to-get-the-current-spark-context-settings-in-pyspark)

This is a question and answer site about a range of coding topics. It's not a site I would ever go on to search for specific questions. But when I google something and see one of the results is a page in stackoverflow there is a good chance it will help my answer my question.

[Shiny Tutorials (RStudio)](https://shiny.rstudio.com/tutorial/)

A collection of video and written tutorials great for helping you develop shiny web applications.

<a id="books"></a>
## Books

Books which are freely available from the author are highlighted.

[Statistical Analysis with R for Dummies - Joseph Schmuller](https://www.dummies.com/education/math/statistics/statistical-analysis-r-dummies/)

I like this book for the step by step calculations of core statistics such as R-squared and also has detailed walkthroughs of hypothesis testing.

<p><a href="https://rstudio-education.github.io/hopr/">Hands-On Programming with R - Garrett Grolemund</a><span class=highlight> (Free)</span></p>

This book takes you from the <strong>absolute</strong> beginning with zero coding knowledge. A great place to start learning R. It is a good overview from a general programmng perspective. I recommend chapters 1-7. The later chapters seem more understandable once you have some hands-on experiene with data science. Appendix E also provides some good debugging tips.

<p><a href="https://r4ds.had.co.nz/">R for Data Science - Hadley Wickham &amp; Garret Grolemund</a><span class=highlight> (Free)</span></p>
A good allrounder book on using R for data science. It comes with lots of code snippits for you to try our yourself.

<p><a href="https://adv-r.hadley.nz/">Advanced R - Hadley Wickham</a><span class=highlight> (Free)</span></p>
This book is on my reading list. I know colleagues who refer to it often for more advanced topics.

<p><a href="https://www.goodreads.com/book/show/17397466-an-introduction-to-statistical-learning">An Introduction to Statistical Learning - Gareth James, Daniela Witten, Trevor Hastie and Robert Tibshirani</a><span class=highlight> (Free from Gareth James's academic website)</span></p>

This book is an <strong>excellent</strong> resource for understanding the statistical fundamentals of the most commonly used machine learning algorithms. I consider it a must read. It also comes with lab exercises in R but the book is great based on its mathematical and statistic introductions alone.

<p><a href="https://jakevdp.github.io/PythonDataScienceHandbook/">Python Data Science Handbook</a><span class=highlight> (Free)</span></p>
I've not read it yet myself. I heard it is a very comprehensive resource for data science in python.

[Python Machine Learning - Sebastian Raschka](https://sebastianraschka.com/books.html)

This book has some good illustrations on how scikit learn works and might be helpful generally for people wanting to use sklearn for machine learning. It is a good book for people who already know machine learning and want to know how to implement their favourite algorithms in python but it also introduces concepts in machine learning too.

[Fluent Python - Luciano Ramalho](https://www.goodreads.com/book/show/22800567-fluent-python)

If you are like me and want to understand the inner workings of Python, this is a good read. This book helped me learn more about base python. I didn't read it cover to cover but pick it up, read a chapter and you will learn something new to improve your code. 

[Weapons of Math Destruction - Cathy O'Neil](https://weaponsofmathdestructionbook.com/)

Because we are not doing data science in an isolated bubble. Our decisions have consequenses and this book is a great start to being aware of them.

<p><a href="https://serialmentor.com/dataviz">Fundamentals of Data Visualization - Claus O. Wilke</a><span class=highlight> (Free)</span></p>
I've not fully explored this yet but it seems like a great resource on how to ensure your data visualisations are as communicative as possible and tell the story you want to tell.

<p><a href="https://r-graphics.org/">R Graphics Cookbook - Winston Chang</a><span class=highlight> (Free)</span></p>
This book should be your first reference when trying to work out how to do certain things using ggplot2.

<p><a href="https://linuxcommand.org/tlcl.php">The Linux Command Line - William Shotts</a><span class=highlight> (Free)</span></p>
Great reference and introduction to Linux commands. I consider linux command line basics as essential for any programmer. 

<a id="social"></a>
## Social

[Twitter](https://twitter.com/)

I like to stay active in the twitter-sphere to keep track of the latest data science goings-on. You can hear directly from any data scientists/programmers/visualisation experts you admire.  Recommended hashtags to search for/accounts to follow:
<div>
    <ul class=no_bullets>
    {% for item in site.data.twitter %}
    {%if item.name contains '@' %}
    <li><a href="{{ item.name | remove_first: '@' | prepend: 'https://twitter.com/'}}">
      {{ item.name }}</a>
    {% else if (item.name contains '#' %}
        <li><a href="{{ item.name | remove_first: '#' | prepend: 'https://twitter.com/search?q=%23' | append: '&src=typed_query'}}">
      {{ item.name }}</a>
    {%endif%}
      <span> {{item.description}}</span></li>
    {% endfor %}
    </ul>
</div>
<br>
[Vienna Data Science Group (vdsg)](https://viennadatasciencegroup.at/)

I attended hackathon run by VDSG in which I worked on projects from non-profit organisations to help them get the most out of their data. I have also worked with this group on other data4good projects.

[R-Ladies Vienna](https://www.meetup.com/rladies-vienna/)

Events ranging from beginner to advanced on different R topics.

[Women&&Code](https://www.meetup.com/WomenAndCode/)

I've not been to this series of meetups but I've heard great things about it.

<a id="podcasts"></a>
## Podcasts

[Data Stories](http://datastori.es/)

All things data visualisation

[Linear Digressions](http://lineardigressions.com/)

This podcast is an intermediate level podcast about different machine learning related mathmatical concepts and algorithms. Presented by one expert, [Katie Malone](https://twitter.com/multiarmbandit), and one non-expert, Ben (couldn't find his SM details!).

[Freakonomics Radio](http://freakonomics.com/archive/)

If you're curious about the role of data in the real world, this podcast is for you.

<a id="cheatsheets"></a>
## Cheatsheets

[R Cheatsheets](https://www.rstudio.com/resources/cheatsheets/)

A great collection of around 30 cheatsheets for different tidyverse and non-tidyverse packages in R.

[Scikit-learn](https://s3.amazonaws.com/assets.datacamp.com/blog_assets/Scikit_Learn_Cheat_Sheet_Python.pdf)

An overview of the key functions to use when doing machine learning in python using scikit-learn.

[pandas Cheatsheet](https://pandas.pydata.org/Pandas_Cheat_Sheet.pdf)

Complementary to the pandas documentation. This gives an overview of commonly used functions.

<a>Git Cheatsheet</a>

I don't have a recommendation for a specific cheatsheet but I recommend finding one you like and saving it somewhere useful. **Everybody** needs to look up anything more compley rthan the basic commands.

[Machine Learning Flashcards - Chris Albon](https://machinelearningflashcards.com/)

A great resource to test your machine learning knowledge every now and then.