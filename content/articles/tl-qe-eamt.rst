Quality In, Quality Out: Learning from Actual Mistakes
======================================================

:subtitle: Repurposing a pre-trained QE model with inductive Transfer-Learning 

:date: 2020-04-20 17:00
:tags: machine translation, quality estimation
:slug: transfer-learning-qe
:authors: fred 

:summary: Our new paper on using inductive Transfer-Learning for Quality Estimation has been accepted at EAMT and will be published later this year!

**Abstract** -- Approaches to Quality Estimation (QE) of machine translation have shown promising results at predicting quality scores for translated sentences. However, QE models are often trained on noisy approximationsi of quality annotations derived from the proportion of post-edited words in translated sentences instead of direct human annotations of translation errors. The latter is a more reliable ground-truth but more expensive to obtain. In this paper, we present the first attempt to model the task of predicting the proportion of *actual* translation errors in a sentence while minimising the need for direct human annotation. For that purpose, we use transfer-learning to leverage large scale noisy annotations and small sets of high-quality human annotated translation errors to train QE models. Experiments on four language pairs and translations obtained by statistical and neural models show consistent gains over strong baselines.


`Read the full paper`_

.. _Read the full paper: https://fredblain.org/papers/pdf/blain_et_al_quality_in,_quality_out.pdf

