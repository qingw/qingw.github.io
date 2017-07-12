---
layout: post
title: Accepted Papers by STOC on Quantum Computing
categories: [research]
---
[**ACM Symposium on Theory of Computing (STOC)**](http://www.sigact.org/stoc.html) is an academic conference in the field of theoretical computer science. STOC has been organized annually since 1969, typically in May or June; the conference is sponsored by the Association for Computing Machinery special interest group SIGACT.

## STOC 2015 on Quantum Computation

[Accepted papers online](http://acm-stoc.org/stoc2015/acceptedpapers.html). Papers on quantum computation and quantum information.

+ **Quantum Spectrum Testing**. Ryan O'Donnell (Carnegie Mellon University); John Wright (Carnegie Mellon University). [arXiv](http://arxiv.org/abs/1501.05028)
+ **Sparse Quantum Codes from Quantum Circuits**. Dave Bacon (University of Washington and Google), Steven T. Flammia (U Sydney), Aram W. Harrow (MIT), Jonathan Shi (Cornell). [arXiv](http://arxiv.org/abs/1411.3334)
+ **Forrelation: A Problem that Optimally Separates Quantum from Classical Computing**. Scott Aaronson (MIT) and Andris Ambainis (University of Latvia). [arXiv](http://arxiv.org/abs/1411.5729)
+ **A New, Fully Quantum Notion of Information Complexity, and an Application to Direct Sum for Bounded Round Quantum Communication Complexity**. Dave Touchette (Université de Montréal). [arXiv](http://arxiv.org/abs/1409.4391)

## STOC 2014 Accepted Papers

[Accepted papers online](http://www.columbia.edu/~cs2035/stoc/stoc2014/accepted.shtml). Papers on quantum computation and quantum information.

+ **Self-Testing Quantum Dice Certified by an Uncertainty Principle**. Carl A. Miller and Yaoyun Shi.
+ **A Quantum Algorithm for Computing the Unit Group of an Arbitrary Degree Number Field**. Kirsten Eisentraeger, Sean Hallgren, Alexei Kitaev and Fang Song.

## STOC 2013 Accepted Papers

[Accepted papers online](http://acm-stoc.org/stoc2013/accepted.html). Papers on quantum computation and quantum information.

+ **Inverting well-conditioned matrices in Quantum Logspace**. Amnon Ta-Shma (Tel-Aviv University)
+ **Superlinear advantage for exact quantum algorithms**. Andris Ambainis (University of Latvia)
+ **Quantum de Finetti Theorems under Local Measurements with Applications**. Fernando G.S.L. Brandao (ETH Zurich) and Aram W. Harrow (University of Washington).
+ **Product-State Approximations to Quantum Ground States**. Fernando G.S.L. Brandao (ETH Zurich) and Aram W. Harrow (University of Washington)

## STOC 2012 Accepted Papers

[Accepted papers online](http://acm-stoc.org/stoc2012/accepted.htm). Papers on quantum computation and quantum information.

+ **Quantum Money from Hidden Subspaces**. Scott Aaronson, Paul Christiano
+ **Certifiable Quantum Dice -- Or, Testable Exponential Randomness Expansion**. Umesh Vazirani, Thomas Vidick.

## STOC 2011 Accepted Papers

[Accepted papers with abstracts online](http://acm-stoc.org/stoc2011/AcceptedPapersWithAbstracts.htm). Papers on quantum computation and quantum information.

**1.    Quantum One-Way Communication can be Exponentially Stronger Than Classical Communication**  
Bo'az Klartag and Oded Regev  
Tel Aviv University and Tel Aviv University & CNRS, ENS, Paris  
<blockquote>
<p>
In STOC 1999, Raz presented a (partial) function for which there is a quantum protocol communicating only $O(\log n)$ qubits, but for which any classical (randomized, bounded-error) protocol requires $\poly(n)$ bits of communication. That quantum protocol requires two rounds of communication. Ever since Raz's paper it was open whether the same exponential separation can be achieved with a quantum protocol that uses only one round of communication. Here we settle this question in the affirmative.
</p>
</blockquote>

**2.    A quasipolynomial-time algorithm for the quantum separability problem**  
Fernando Brandao and Matthias Christandl and Jon Yard  
Universidade Federal de Minas Gerais, ETH Zurich, Los Alamos National Laboratory  
<blockquote>
<p>
We present a quasipolynomial-time algorithm solving the weak membership problem for the convex set of separable, i.e. non-entangled, bipartite density matrices. The algorithm decides whether a density matrix is separable or eps-away from the set of the separable states in time exp(O(eps^(-2) log|A| log|B|)), where |A| and |B| are the local dimensions, and the distance is measured with either the Euclidean norm, or with the so-called LOCC norm. The latter is an operationally motivated norm giving the optimal probability of distinguishing two bipartite quantum states, each shared by two parties, using any protocol formed by quantum local operations and classical communication (LOCC) between the parties. We also obtain improved algorithms for optimizing over the set of separable states and for computing the ground-state energy of mean-field Hamiltonians.

The techniques we develop are also applied to quantum Merlin-Arthur games, where we show that multiple provers are not more powerful than a single prover when the verifier is restricted to LOCC protocols, or when the verification procedure is formed by a measurement of small Euclidean norm. This answers a question posed by Aaronson et al. (Theory of Computing 5, 1, 2009) and provides two new characterizations of the complexity class QMA.

Our algorithm uses semidefinite programming to search for a symmetric extension, as first proposed by Doherty, Parrilo and Spedialieri (Phys. Rev. A 69, 022308, 2004). The bound on the runtime follows from an improved de Finetti-type bound quantifying the monogamy of quantum entanglement. This result, in turn, follows from a new lower bound on the quantum conditional mutual information and the entanglement measure squashed entanglement. 
</p>
</blockquote>

**3.    The Computational Complexity of Linear Optics**  
Scott Aaronson and Alex Arkhipov  
MIT  
<blockquote>
<p>
We give new evidence that quantum computers---moreover, rudimentary quantum computers built entirely out of linear-optical elements---cannot be efficiently simulated by classical computers. In particular, we define a model of computation in which identical photons are generated, sent through a linear-optical network, then nonadaptively measured to count the number of photons in each mode. This model is not known or believed to be universal for quantum computation, and indeed, we discuss the prospects for realizing the model using current technology. On the other hand, we prove that the model is able to solve sampling problems and search problems that are classically intractable under plausible assumptions.

Our first result says that, if there exists a polynomial-time classical algorithm that samples from the same probability distribution as a linear-optical network, then P^#P=BPP^NP, and hence the polynomial hierarchy collapses to the third level. Unfortunately, this result assumes an extremely accurate simulation.

Our main result suggests that even an approximate or noisy classical simulation would already imply a collapse of the polynomial hierarchy. For this, we need two unproven conjectures: the Permanent-of-Gaussians Conjecture, which says that it is #P-hard to approximate the permanent of a matrix A of independent N(0,1) Gaussian entries, with high probability over A; and the Permanent Anti-Concentration Conjecture, which says that |Per(A)| >= sqrt(n!)/poly(n) with high probability over A. We present evidence for these conjectures, both of which seem interesting even apart from our application.

This paper does not assume knowledge of quantum optics. Indeed, part of its goal is to develop the beautiful theory of noninteracting bosons underlying our model, and its connection to the permanent function, in a self-contained way accessible to theoretical computer scientists.
</p>
</blockquote>

**3.    Strong Direct Product Theorems for Quantum Communication and Query Complexity**  
Alexander A. Sherstov
Microsoft Research, New England
<blockquote>
<p>
A strong direct product theorem (SDPT) states that solving n instances of a problem requires Omega(n) times the resources for a single instance, even to achieve success probability exp(-Omega(n)). We prove that quantum communication complexity obeys an SDPT whenever the communication lower bound for a single instance is proved by the generalized discrepancy method, the strongest technique in that model. We prove that quantum query complexity obeys an SDPT whenever the query lower bound for a single instance is proved by the polynomial method, one of the two main techniques in that model. In both models, we prove the corresponding XOR lemmas and threshold direct product theorems.
</p>
</blockquote>

**4.    From Low-Distortion Norm Embeddings to Explicit Uncertainty Relations and Efficient Information Locking**  
Omar Fawzi and Patrick Hayden and Pranab Sen
McGill University, Perimeter Institute and Tata Institute of Fundamental Research
<blockquote>
<p>
Quantum uncertainty relations are at the heart of many quantum cryptographic protocols performing classically impossible tasks. One direct operational manifestation of these uncertainty relations is a purely quantum effect referred to as information locking. A locking scheme can be viewed as a cryptographic protocol in which a uniformly random n-bit message is encoded in a quantum system using a classical key of size much smaller than n. Without the key, no measurement of this quantum state can extract more than a negligible amount of information about the message (the message is "locked"). Furthermore, knowing the key, it is possible to recover (or "unlock") the message. In this paper, we make the following contributions by exploiting a connection between uncertainty relations and low-distortion embeddings of L2 into L1:

- We introduce the notion of metric uncertainty relations and connect it to low-distortion embeddings of L2 into L1 . A metric uncertainty relation also implies an entropic uncertainty relation.

- We prove that random bases satisfy uncertainty relations with a stronger deﬁnition and better parameters than previously known. Our proof is also considerably simpler than earlier proofs. We apply this result to show the existence of locking schemes with key size independent of the message length.

- We give efficient constructions of bases satisfying metric uncertainty relations. These bases are computable by quantum circuits of almost linear size. This leads to the first explicit construction of a strong information locking scheme. Moreover, we present a locking scheme that can in principle be implemented with current technology. These constructions are obtained by adapting an explicit norm embedding due to Indyk (STOC'07) and an extractor construction of Guruswami, Umans and Vadhan (JACM'09).

- We apply our metric uncertainty relations to give communication protocols that perform equality-testing of n-qubit states. We prove that this task can be performed by a single message protocol using O(log(1/e)) qubits and n bits of communication, where e is an error parameter. We also give a single message protocol that uses O(log(n)^2) qubits, where the computation of the sender is efficient. 
</p>
</blockquote>

## STOC 2010 Accepted Papers

## STOC 2009 Accepted Papers

## STOC 2008 Accepted Papers

## STOC 2007 Accepted Papers

## STOC 2006 Accepted Papers

## STOC 2005 Accepted Papers

## STOC 2004 Accepted Papers

## STOC 2003 Accepted Papers

## STOC 2002 Accepted Papers

## STOC 2001 Accepted Papers

## STOC 2000 Accepted Papers
