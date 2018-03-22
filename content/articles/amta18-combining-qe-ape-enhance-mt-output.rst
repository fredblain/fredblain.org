Combining Quality Estimation and Automatic Post-editing to Enhance Machine Translation output
=============================================================================================

:subtitle: New publication co-written with the MT Group at FBK

:date: 2018-03-22 19:23
:tags: machine translation, automatic post-editing, quality estimation
:slug: plant-mt-errors-corpus
:slug: amta18-combining-qe-ape-enhance-mt-output
:authors: fred 

:summary: Our new paper on combining Quality Estimation and Automatic Post-Editing is out! 

Our new paper resulting in a joint work between the Machine Translation Group at FBK, and the University of Sheffield is now available in the proceedings of the last edition of the Association for Machine Translation in America.

Abstract: We investigate different strategies for combining quality estimation (QE) and automatic post-editing (APE) to improve the output of machine translation (MT) systems.
The joint contribution of the two technologies is analyzed in different settings, in which QE serves as either: i) an activator of APE corrections, or ii) a guidance to APE corrections, or iii) a selector of the final output to be returned to the user.
In the first case (QE as activator), sentence-level predictions on the raw MT output quality are used to trigger its automatic correction when the estimated (TER) scores are below a certain threshold.  
In the second case (QE as guidance), word-level binary quality predictions (“good”/“bad”) are used to inform APE about problematic words in the MT output that should be corrected.  
In the last case (QE as selector), both sentence- and word-level quality predictions are used to identify the most accurate translation between the riginal MT output and its post-edited version.  
For the sake of comparison, the underlying APE technologies explored in our evaluation are both phrase-based and neural.  
Experiments are carried out on the English-German data used for the QE/APE shared tasks organized within the First Conference on Machine Translation (WMT 2016).   
Our evaluation shows positive but mixed results, with higher performance observed when word-level QE is used as a selector for neural APE applied to the output of a phrase-based MT system.  
Overall, our findings motivate further investigation on QE technologies.  
By reducing the gap between the performance of current solutions and “oracle” results, QE could significantly add to competitive APE technologies.