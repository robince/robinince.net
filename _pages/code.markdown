## GCMI

[GCMI](https://github.com/robince/gcmi) implements a mutual information estimate based on a Gaussian copula. The method is decribed in [Ince et. al 2017](http://dx.doi.org/10.1101/043745). 

## Partial Information Decomposition and Partial Entropy Decomposition

[This repository](https://github.com/robince/partial-info-decomp) implements the partial information decomposition, with a measure of redundancy based on pointwise common change in surprisal as described in [Ince 2017a](http://dx.doi.org/10.3390/e19070318).
It also includes the Partial Entropy Decomposition, implemented with an entropic redundancy measure based on pointwise common surprisal as described in [Ince 2017b](http://arxiv.org/abs/1702.01591).

## PyEntropy
[PyEntropy](http://code.google.com/p/pyentropy/) is a Python library to implement calculation of entropy and information quantities using a range of bias correction methods. This contains the core information routines I use throughout my work, and was produced for eventual implementation as an online service in the CARMEN project. It also includes `pyentropy.maxent` - a module for computing maximum entropy solutions subject to marginal constraints over finite alphabet probability spaces using the information geometric methods of [Amari](http://www.brain.riken.jp/labs/mns/amari/home-E.html). It is an open source project hosted at Google code. See [Ince et al. (2009)](research.html#ince2009pfi) for details. The documentation, including a brief primer on entropy and information theory, is available [here](http://robince.github.com/pyentropy).

## loo\_classifiers
[loo\_classifiers](https://github.com/robince/loo_classifiers) is a Matlab package to efficiently implement leave-one-out cross-validation for a number of basic supervised learning algorithms. 

## tdistfit
[tdistfit](https://github.com/robince/tdistfit) is a Matlab package to fit multivariate t-distributions to data using an expectation-maximization based algorithm.

## MATLAB Fortran 95 Interface
The excellent modern [Fortran
interface](http://www.mathworks.com/matlabcentral/fileexchange/25934-fortran-95-interface-to-matlab-api-with-extras)
to the MATLAB mex API makes extending MATLAB with compiled Fortran extensions
much easier. 
[My contributions](https://github.com/robince/MatlabAPI) consist of
modifications to support gfortran on Linux as well as the `-largeArrayDims` 64 bit
interface on all platforms.
I have also implemented a ['lite'](https://github.com/robince/MatlabAPI_lite) version of the interface, which has much reduced functionality but supports all the Matlab data types. 

## FAMaxEnt
This module for computing finite alphabet maximum entropy solutions subject to marginal contraints is now distributed as part of the PyEntropy package (`pyentropy.maxent`).

## MATLAB/Python Integration
The Python programming language, together with the numerical libraries NumPy and SciPy, provides a compelling alternative to MATLAB for computational science. Here are some simple scripts to help copying and pasting [from MATLAB to Python](http://www.mathworks.com/matlabcentral/fileexchange/24087) and [from Python to MATLAB](http://codepad.org/MVYCM0AJ).

I have also contributed to [pymex](https://github.com/kw/pymex), which embeds a
Python interpreter in a MATLAB mex extension and provides an elegent interface
for interacting with Python from the MATLAB shell. 
My `win64` [branch](https://github.com/robince/pymex/tree/win64) supports 64
bit windows builds with a Microsoft toolchain.

## Miscellaneous
Other snippets and thoughts can be found on my [blog](blog/category/code).

<!-- vim: set ts=2 sw=2 ft=mkd :-->
