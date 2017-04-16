PLANT
=====

:subtitle: Phrase-Level Annotation of machiNe Translations

:date: 2017-04-16 20:07
:tags: machine translation, post-editing, quality estimation
:slug: plant-mt-errors-corpus
:authors: fred 

:summary: 1000 Machine Translation Errors manually annotated at phrase-level over 400 French-English source sentences and their machine translations, along their human post-edited version, and original references. 

A year ago we have released a corpus of a thousand of Machine Translation (MT) Errors manually annotated at phrase-level over 400 French-English source sentences and their machine translations, along their human post-edited version, and original references.

The creation of this dataset was motivated by our research on Quality Estimation (QE) and our work on predicting the newly introduced phrase-level.
One can see the latter as a way to balance between word and sentence-level prediction, two well studied levels. 
However, QE at phrase-level implies that one needs to delimit sub-segments within the segment and we faced the lack of reference annotations to evaluate our segmentation strategies against. Therefore, we created these gold-standard annotations.

We have built this dataset with the help of human annotators (all fluent English speakers) whom were asked to identify any ungrammaticalities or variations of meaning that led to incorrect translations. 
To do so, they compared raw machine translations against their post-edited version, reference and source sentences extracted from the LIG corpus (`Potet et al., 2012`_). 
The annotations were collected using the `Brat Rapid Annotation Tool`_ (a.k.a. BRAT) along with a set of guidelines, and stored in a `stand-off`_ format.
One can find more details about the data collection and the annotation environment in the `paper we published`_ at `LREC'16`_:

In addition to the data collection, we also describe in this paper the segmentation and labelling strategies we have investigated, as well as the results of the comparison between these strategies for automatic labelling and the gold-standard annotations we have collected.

Finally, to support further research, the `dataset is freely accessible`_ under a `CC-BY-SA`_ license. 
We also provide part of our scripts to facilitate reuse of our stand-off annotations with the original content of the LIG corpus (which has to be `downloaded separately`_).


.. _Potet et al., 2012: http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.680.3108&rep=rep1&type=pdf
.. _downloaded separately: http://www-clips.imag.fr/geod/User/marion.potet/index.php?page=download
.. _Brat Rapid Annotation Tool: http://brat.nlplab.org/
.. _stand-off: http://brat.nlplab.org/standoff.html
.. _LREC'16: http://lrec2016.lrec-conf.org/
.. _paper we published: /papers/pdf/blain_et_al_23-28_phrase_level_segmentation_and_labelling_of_machine_translation_errors.pdf 
.. _dataset is freely accessible: http://staffwww.dcs.shef.ac.uk/people/L.Specia/resources/usfd-plant.tar.gz
.. _CC-BY-SA: https://creativecommons.org/licenses/by-sa/4.0/legalcode
