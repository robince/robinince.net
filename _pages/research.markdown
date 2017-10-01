<div class="content" markdown="1">

I develop statistical methods for analysing data from [neuroimaging](http://en.wikipedia.org/wiki/Neuroimaging) and [electrophysiological](http://en.wikipedia.org/wiki/Electrophysiology) experiments. 
I have a particular interest in practical applications of [information theoretic](http://en.wikipedia.org/wiki/Information_theory) methods. 

## <a name="projects"></a>Research Strands

### <a name="proj_info"></a>Developing information theoretic analysis tools 

Information theory provides an elegant unified statistical framework but estimating information theoretic quantities in practise from limited data is not straightforward. During my PhD I developed [pyEntropy](http://code.google.com/p/pyentropy), an open source Python library which implements a range of bias corrected estimates for discrete (i.e. binned) data.

I have recently developed a new bin-less method for estimating information theoretic quantities ([GCMI](https://github.com/robince/gcmi), [Ince et al. 2017](#ince2017asf)) which is much less sensitive to bias effects.
This estimator is robust, computationally efficient, and is ideally suited to signals such as those recorded with [EEG](http://en.wikipedia.org/wiki/Electroencephalography) and [MEG](http://en.wikipedia.org/wiki/Magnetoencephalography).
In particular, it allows estimation of information theoretic quantities on multivariate spaces that would be impossible with binned methods. 
This allows practical estimation of quantities like interaction information (below), and [conditional mutual information](http://en.wikipedia.org/wiki/Conditional_mutual_information).

### <a name="proj_interactions"></a>Quantifying representational interactions between neuroimaging responses

If two different neuroimaging responses (different spatial/temporal/spectral regions, or different recording modalities) are found to be modulated by a stimulus, a natural question is whether they represent the stimulus in the same way. 
I believe such questions can be addressed with information theoretic notions of redundancy (representational overlap or shared information) and synergy (representation in interaction); calculated through variants of [interaction information](http://en.wikipedia.org/wiki/Interaction_information) ([Ince et al. 2017](#ince2017asf)).
Redundancy indicates both responses represent the same information about the simulus. 
Synergy indicates that the two responses convey more information together than they do alone; the relationship between them is informative.
However, interaction information conflates synergy and redundancy quantifying only the net resultant effect.
A technique called the [Partial Information Decomposition](https://arxiv.org/abs/1004.2515) (PID) has been proposed to properly separate synergy and redundancy, but finding a practical implementation of the theoretical concepts has proved difficult ([Ince 2017](#ince2017mmr)).
I propose a switch of perspective, to first decompose entropy, which reveals the cause for some of the difficulties with the PID, and provides a principled and practical alternative approach ([Ince 2017](#ince2017ped)). 
Currently the only analyses methods which address these types of questions are [Representational Similarity Analysis](http://www.mrc-cbu.cam.ac.uk/methods-and-resources/toolboxes/) and the [temporal generalization decoding method](http://dx.doi.org/10.1016/j.tics.2014.01.002).
I hope that information theoretic approaches can complement these techniques, by widening the number of situations in which such questions can be addressed.

### <a name="proj_te"></a>Information transmission in MEG data

Network level analyses of neuroimaging data are now well established. 
However, the connectivity measures which are used to obtain functional networks are usually agnostic to specific information content; they detect the presence of communication between regions but do not account for the content of that communication (e.g. whether it is stimulus driven, task relevant etc.).
We have developed a measure which quantifies the causal communication *about* a specific stimulus feature [(Ince et al. 2015)](#ince2015ttf).
This measure is based on directed information (often called [transfer entropy](http://en.wikipedia.org/wiki/Transfer_entropy)).
We hope this content-based functional connectivity measure will allow network analyses of neuroimaging data to focus more directly on information processing functions.

### <a name="proj_misc"></a>Other methods

I am interested in combining information theoretic approaches with supervised learning, or other dimensionality reduction approaches to allow application to high dimensional response spaces. 
One dimensionality reduction approach which I believe is particularly promising is the combination of [mutual information (MI)](http://en.wikipedia.org/wiki/Mutual_information) and [non-negative matrix factorization (NMF)](http://en.wikipedia.org/wiki/Non-negative_matrix_factorization).
NMF and MI are ideal partners: MI images are non-negative and with a high signal to noise ratio, while NMF provides a meaningful parts-based decomposition, but does not normally incorporate any task or response specific knowledge. 
I believe combining them provides a simple but flexible approach for task-driven dimensionality reduction. 

## <a name="collab"></a>Collaborators

### University of Glasgow

- [Philippe Schyns](http://www.gla.ac.uk/researchinstitutes/neurosciencepsychology/staff/philippeschyns/)
- [Joachim Gross](http://www.gla.ac.uk/researchinstitutes/neurosciencepsychology/staff/joachimgross/)
- [Guillaume Rousselet](http://www.gla.ac.uk/researchinstitutes/neurosciencepsychology/staff/guillaumerousselet/)
- [Nicola van Rijsbergen](http://www.gla.ac.uk/researchinstitutes/neurosciencepsychology/staff/nicolavanrijsbergen/)
- [Bruno Giordano](http://www.brunolgiordano.net/)
- [Christoph Kayser](http://inl.ccni.gla.ac.uk/)
- [Hyojin Park](http://www.gla.ac.uk/researchinstitutes/neurosciencepsychology/staff/hyojinpark/)

### External

- [Stefano Panzeri](https://www.iit.it/people/stefano-panzeri), Italian Institute of Technology, Rovereto
- [Rasmus Petersen](http://www.petersenlab.ls.manchester.ac.uk/), University of Manchester
- [Michael Bale](http://www.sussex.ac.uk/profiles/369047), University of Sussex


<p></p>
<hr class="half" />
<p></p>
<p></p>

<div class="textcenter" markdown="1">
<a name="pubs"></a>
<a href="http://scholar.google.com/citations?user=tI7ZazkAAAAJ"><img src="img/scholar_logo_md_2011.gif" alt="Google Scholar Citations" title="Google Scholar Citations" /></a> 
</div>

## Publications

<div id="bib" markdown="1">

### <a name="2017"></a>2017

* <a name="ince2017mmr"></a>RAA Ince  
  **Measuring multivariate redundant information with pointwise common change in surprisal**  
  *Entropy* (2017) <b>19</b>(7) p. 318  
  [ [LINK] ](http://dx.doi.org/10.3390/e19070318) [ [code] ](https://github.com/robince/partial-info-decomp/)
* <a name="ince2017asf"></a>RAA Ince, BL Giordano, C Kayser, GA Rousselet, J Gross, PG Schyns  
  **A statistical framework for neuroimaging data analysis based on mutual information estimated via a Gaussian copula**  
  *Human Brain Mapping* (2017) <b>38</b>(3) p. 1541-1573 
  [ [LINK] ](http://dx.doi.org/10.1002/hbm.23471) [ [toolbox] ](https://github.com/robince/gcmi/) [ [code] ](https://github.com/robince/sensorcop)
* <a name="ince2017ped"></a>RAA Ince  
  **The Partial Entropy Decomposition: Decomposing multivariate entropy and mutual information via pointwise common surprisal**  
  *arXiv:1702.01591 [cs.IT]* (2017)  
  [ [LINK] ](http://arxiv.org/abs/1702.01591) [ [code] ](https://github.com/robince/partial-info-decomp/)
* <a name="giordano2016col"></a>BL Giordano, RAA Ince, J Gross, S Panzeri, PG Schyns, C Kayser    
  **Contributions of local speech encoding and functional connectivity to audio-visual speech integration**  
    *eLife* (2017) <b>6</b>  
  [ [LINK] ](http://dx.doi.org/10.7554/eLife.24763)
* <a name="keitel2017acd"></a>A Keitel, RAA Ince, J Gross, C Kayser    
  **Auditory cortical delta-entrainment interacts with oscillatory power in multiple fronto-parietal networks**  
    *NeuroImage* (2017) <b>147</b> p. 32-42   
  [ [LINK] ](http://dx.doi.org/10.1016/j.neuroimage.2016.11.062)

### <a name="2016"></a>2016

* <a name="ince2016tds"></a>RAA Ince, K Jaworska, J Gross, S Panzeri, NJ van Rijsbergen, GA Rousselet, PG Schyns  
  **The deceptively simple N170 reflects network information processing mechanisms involving visual feature coding and transfer across hemispheres**  
    *Cerebral Cortex* (2016) <b>26</b>(11) p. 4123-4135   
  [ [LINK] ](http://dx.doi.org/10.1093/cercor/bhw196)

### <a name="2015"></a>2015

* <a name="ince2015ttf"></a>RAA Ince, NJ van Rijsbergen, G Thut, GA Rousselet, J Gross, S Panzeri and PG Schyns  
  **Tracing the flow of perceptual features in an algorithmic brain network**  
  *Scientific Reports* (2015)  <b>5</b> p. 17681  
  \[ [LINK (Open Access)](http://dx.doi.org/10.1038/srep17681) \]
* <a name="kayser2015isr"></a>SJ Kayser, RAA Ince, J Gross and C Kayser  
  **Irregular speech rate dissociates auditory cortical entrainment, evoked responses, and frontal alpha**  
  *Journal of Neuroscience* (2015)  <b>35</b>(44) p. 14691-14701  
  \[ [LINK (Open Access)](http://dx.doi.org/10.1523/JNEUROSCI.2243-15.2015) \]
* <a name="bale2015epc"></a>MR Bale\*, RAA Ince\*, G Santagata and RS Petersen  
  **Efficient population coding of naturalistic whisker motion in the ventro-posterior medial thalamus based on precise spike timing**  
  *Frontiers in Neural Circuits* (2015)  <b>9</b>(50)  
  \[ [LINK (Open Access)](http://dx.doi.org/10.3389/fncir.2015.00050) \]
* <a name="park2015ftd"></a>H Park, RAA Ince, PG Schyns, G Thut and J Gross  
  **Frontal top-down signals increase coupling of auditory low-frequency oscillations to continuous speech in human listeners**  
  *Current Biology* (2015)  <b>25</b>p. 1649-1653  
  \[ [LINK (Open Access)](http://dx.doi.org/10.1016/j.cub.2015.04.049) \]


### <a name="2014"></a>2014

* <a name="rousselet2014ecm"></a>GA Rousselet, RAA Ince, NJ van Rijsbergen and PG Schyns  
  **Eye coding mechanisms in early human face event-related potentials**  
  *Journal of Vision* (2014)  <b>14</b>(13);7 p. 1-24  
  \[ [LINK (Open Access)](http://dx.doi.org/10.1167/14.13.7) \]
* <a name="ince2014soi"></a>RAA Ince, S Panzeri and SR Schultz  
  **Summary of information theoretic quantities**  
  *Encyclopedia of Computational Neuroscience* (2014)    
  \[ [LINK (arXiv)](http://arxiv.org/abs/1501.01854) \]
* <a name="ince2014eit"></a>RAA Ince, SR Schultz and S Panzeri  
  **Estimating information theoretic quantities**  
  *Encyclopedia of Computational Neuroscience* (2014)    
  \[ [LINK (arXiv)](http://arxiv.org/abs/1501.01863) \]
* <a name="ince2014eit"></a>SR Schultz, RAA Ince and S Panzeri  
  **Applications of information theory to analysis of neural data**  
  *Encyclopedia of Computational Neuroscience* (2014)    
  \[ [LINK (arXiv)](http://arxiv.org/abs/1501.01860) \]
* <a name="panzeri2014itr"></a>S Panzeri, RAA Ince, ME Diamond and C Kayser  
  **Reading spike timing without a clock: intrinsic decoding of spike trains**  
  *Phil. Trans. B* (2014)  <b>369</b> 20120467  
  \[ [LINK (Open Access)](http://dx.doi.org/10.1098/rstb.2012.0467) \]

### <a name="2013"></a>2013

* <a name="ince2013ncf"></a>RAA Ince, S Panzeri and C Kayser  
  **Neural codes formed by small and temporally precise populations in auditory cortex**  
  *Journal of Neuroscience* (2013) <b>33</b>(46) p. 18277-18287  
  \[ [LINK (Subscription Required)](http://dx.doi.org/10.1523/jneurosci.2631-13.2013) | [PDF](/papers/Ince2013_JNeurosci.pdf) \]
* <a name="bale2013lsf"></a>MR Bale\*, K Davies\*, OJ Freeman, RAA Ince and RS Petersen  
  **Low-dimensional sensory feature representation by trigeminal primary afferents**  
  *Journal of Neuroscience* (2013) <b>33</b>(29) p. 12003-12012  
  \[ [LINK (Open Access)](http://dx.doi.org/10.1523/jneurosci.0925-13.2013) \]


### <a name="2012"></a>2012

* <a name="ince2012chap"></a>RAA Ince  
  **Open-source software for studying neural codes**  
  in S Panzeri and R Quian Quiroga (Eds) *Principles of Neural Coding*, CRC Press (in press)  
  \[ [LINK (Amazon)](http://www.amazon.com/Principles-Neural-Coding-Rodrigo-Quiroga/dp/1439853304) \] 
* <a name="kayser2012slow"></a>C Kayser, RAA Ince and S Panzeri  
  **Analysis of slow (theta) oscillations as a potential temporal reference frame for information coding in sensory cortex**  
  *PLoS Computational Biology* (2012) <b>8</b>(10) e1002717  
  \[ [LINK (Open Access)](http://dx.doi.org/10.1371/journal.pcbi.1002717) \]
* <a name="ince2012ant"></a> RAA Ince\*, A Mazzoni\*, A Bartels, NK Logothetis and S Panzeri  
	**A novel test to determine the significance of neural selectivity to single and multiple potentially correlated features**  
  *Journal of Neuroscience Methods* (2012) <b>210</b>:1 p. 49-65  
  \[ [LINK (Subscription Required)](http://dx.doi.org/10.1016/j.jneumeth.2011.11.013) | [PDF](/papers/Ince2011_JNM_inpress.pdf) \]


### <a name="2011"></a>2011

* <a name="panzeri2011ita"></a> S Panzeri and RAA Ince (2011)  
	**Information theoretic approaches to the analysis of neural population recordings**  
	in N Kriegeskorte and G Kreiman (Eds)  *Visual population codes: toward a common multivariate framework for cell recording and functional imaging*, MIT Press  
  \[ [LINK (amazon)](http://www.amazon.com/Visual-Population-Codes-Multivariate-Computational/dp/0262016249) \]

### <a name="2010"></a>2010
* <a name="ince2010itm"></a> RAA Ince, R Senatore, E Arabzadeh, F Montani, ME Diamond and S Panzeri  
	**Information theoretic methods for studying population codes**  
	*Neural Networks* (2010) <b>23</b>:6 p. 713-727  
	\[ [LINK (Subscription Required)](http://dx.doi.org/10.1016/j.neunet.2010.05.008) | [PDF](/papers/Ince2010_NeuralNetworks_preprint.pdf) \]
* <a name="ince2009ost"></a>
	RAA Ince, A Mazzoni, R Petersen and S Panzeri  
	**Open source tools for the information theoretic analysis of neural data**  
	*Frontiers in Neuroscience* (2010) <b>4</b>:1 p. 62-70  
	\[ [LINK (Open Access)](http://journal.frontiersin.org/article/10.3389/neuro.01.011.2010/full) \]

### <a name="2009"></a>2009
* <a name="ince2009otp"></a>
  RAA Ince, F Montani, E Arabzadeh, ME Diamond and S Panzeri  
  **On the presence of high-order interactions in somatosensory cortex and their effect on information transmission**  
	*Journal of Physics: Conference Series* (2009) <b>197</b> 012013 (1pp)  
	\[ [LINK (Open Access)](http://stacks.iop.org/1742-6596/197/012013) \]
* <a name="ince2009ait"></a>
  RAA Ince, C Bartolozzi and S Panzeri  
  **An information theoretic library for analysis of neural codes**  
	*The Neuromorphic Engineer* (2009) doi: 10.2417/1200906.1663  
	\[ [LINK (Open Access)](http://www.ine-news.org/view.php?source=1663-2009-06-17) \]
* <a name="montani2009tih"></a>
  F Montani\*, RAA Ince\*, R Senatore, E Arabzadeh, ME Diamond and S Panzeri  
  **The impact of high-order interactions on the rate of synchronous discharge and information transmission in somatosensory cortex**  
	*Philosophical Transactions of the Royal Society A* (2009) <b>367</b>:1901 p. 3297-3310  
	\[ [LINK (Subscription Required)](http://rsta.royalsocietypublishing.org/content/367/1901/3297.short) | [PDF](/papers/Montani2009_preprint.pdf) \] 
* <a name="ince2009pfi"></a>
  RAA Ince, RS Petersen, DC Swan and S Panzeri  
  **Python for information theoretic analysis of neural data**  
  *Frontiers in Neuroinformatics* (2009) <b>3</b>:4.  
  \[ [LINK (Open Access)](http://www.frontiersin.org/neuroinformatics/paper/10.3389/neuro.11.004.2009/) \]

</div>
\* - These authors contributed equally to this work.

</div>

<div id="subcontent" markdown="1">
<div class="menublock" markdown="1">
- [Top](#)
- [Research Strands](#projects)
  + [Info Tools](#proj_info)
  + [Interactions](#proj_interactions)
  + [Info Transfer](#proj_te)
  + [Misc](#proj_misc)
- [Collaborators](#collab)
- [Publications](#pubs)
  + [2017](#2017)
  + [2016](#2016)
  + [2015](#2015)
  + [2014](#2014)
  + [2013](#2013)
  + [2012](#2012)
  + [2011](#2011)
  + [2010](#2010)
  + [2009](#2009)
</div>
</div>

<!-- vim: set ts=2 sw=2 ft=mkd :-->
