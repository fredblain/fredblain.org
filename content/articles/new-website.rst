New version of the website!
===========================

:subtitle: powered by Pelican/Boostrap3, crontask, reST and https 

:date: 2017-03-10 08:42
:tags: news, pelican
:slug: new-version
:authors: fred 

:summary: After almost a year without update, *fredblain.org* benefits from a new design with the use of Pelican and Boostrap, among other improvements...

After almost a year without a single update, *fredblain.org* benefits from both a new architecture and a new design with the use of `Pelican`_ associated with the so-called `Boostrap 3`_ theme.
I was already familiar with the 'Pelican & Boostrap 3' combo since we use it with `Matael`_ for the website of `SampleCAT`_. 
Previously, I was using one of the `HTML5up`_ templates for the website and `HTMLy`_ for the blog, which are free, ligth, responsive and super customizable.
Now, both website and blog are single entity.

In addition to renewing my website, I wanted to make my life easier.
The publication list is automatically created by Pelican, I just have to keep up-to-date a *.bib* file with my personal publications and... that's all.
Moreover, hosted on a different server than before, it is now automatically updated by a crontask which pull directly the sources from my GH repo and re-compile the all thing.That is perfect for me, I just need to push any modification I make on the GH repo (e.g. typofix, new publication, new content, etc.) and it becomes visible online within the next three hours. 

What else?

In terms of content, all the pages and articles are written in `reST`_ (reStructuredText) which is a beautiful syntax and allows more flexibility to structure the redaction in my opinion.

Last point, but not the least: the website is now in https!


.. _pelican: http://docs.getpelican.com/
.. _Boostrap 3: https://github.com/getpelican/pelican-themes/tree/master/pelican-bootstrap3
.. _Matael: https://matael.org/
.. _SampleCAT: https://sample.cat/
.. _HTML5up: https://html5up.net/
.. _HTMLy: https://www.htmly.com/
.. _ReST: http://docutils.sourceforge.net/rst.html#user-documentation 
