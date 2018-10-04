Release of DeepQuest
====================

:subtitle: New framework for (neural-based) Quality Estimation 

:date: 2018-08-10 21:18
:tags: machine translation, quality estimation, framework, deepquest
:slug: deepquest-coling18
:authors: fred 

:summary: Our recent work on designing solutions for quality estimation of machine translation, and in particular for neural-based machine translation, led us to develop and release a new open-source framework.

On the occasion of COLING'18, we published a new paper on Quality Estimation, in which we present our new dedicated framework: `DeepQuest`_.

Additionally, we present our recent work on document-level QE, and how a light neural architecture yields faster and improved performance on a range of task, compared to current SOTA which requires extensive pre-training:

**Abstract** -- Predicting Machine Translation (MT) quality can help in many practical tasks such as MT post-editing.
The performance of Quality Estimation (QE) methods has drastically improved recently with the introduction of neural approaches to the problem.
However, thus far neural approaches have only been designed for word and sentence-level prediction. 
We present a neural framework that is able to accommodate neural QE approaches at these fine-grained levels and generalize them to the level of documents.  
We test the framework with two sentence-level neural QE approaches: a state of the art approach that requires extensive pre-training, and a new light-weight approach that we propose, which employs basic encoders.  
Our approach is significantly faster and yields performance improvements for a range of document-level quality estimation tasks. 
To our knowledge, this is the first neural architecture for document-level QE. 
In addition, for the first time we apply QE models to the output of both statistical and neural MT systems for a series of European languages and highlight the new challenges resulting from the use of neural MT.

`Read the full paper`_

DeepQuest is open-source and as such, both its `code`_ and `documentation`_ are available online. Check it out if you are interested!

.. _DeepQuest: https://github.com/sheffieldnlp/deepQuest
.. _code: https://github.com/sheffieldnlp/deepQuest
.. _documentation: https://sheffieldnlp.github.io/deepQuest/
.. _Read the full paper: https://fredblain.org/papers/pdf/ive_et_al_deepquest.pdf 
