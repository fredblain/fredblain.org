Unsupervised Quality Estimation for Neural Machine Translation
==============================================================

:subtitle: Glass box approach to neural-based Quality Estimation 

:date: 2020-05-22 9:30
:tags: machine translation, quality estimation
:slug: unsup-qe
:authors: fred 

:summary: Our work on exploring model uncertainty methods for glass-box Quality Estimation has been accepted for publication at TACL! 

**Abstract** -- Quality Estimation (QE) is an important component in making Machine Translation (MT) useful in real-world applications, as it is aimed to inform the user on the quality of the MT output at test time. Existing approaches require large amounts of expert annotated data, computation and time for training. As an alternative, we devise an unsupervised approach to QE where no training or access to additional resources besides the MT system itself is required. Different from most of the current work that treats the MT system as a black box, we explore useful information that can be extracted from the MT system as a by-product of translation. By employing methods for uncertainty quantification, we achieve very good correlation with human judgments of quality, rivalling state-of-the-art supervised QE models. To evaluate our approach we collect the first dataset that enables work on both black-box and glass-box approaches to QE.

The preprint of the paper is available on `ArXiv`_.

.. _ArXiv: https://arxiv.org/abs/2005.10608 
