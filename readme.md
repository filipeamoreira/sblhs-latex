# SBL Latex

At this very early stage of development, this class is basically just a slightly altered "article" class document using the biblatex-chicago bibliography style (with a couple small changes). The current version works best when compiled with xelatex and biber.


##Preamble
Your preamble should look like this:

	%!TEX TS-program = xelatex
	%!TEX encoding = UTF-8 Unicode
	\documentclass{sbl-essay}

	%User Info
	\author{Your Name}
	\date{The Date}
	\title{Your Aweseome Title}
	\professor{Professor}
	\coursenumber{Course Number}
	\coursetitle{Course Name}
	
	\bibliography{your-bibliography-file.bib}

	%Begin Document

	\begin{document}
	\maketitle


	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	% Your groundbreaking research %
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


	\setstretch{1.1}
	\printbibliography
	\end{document}

All the class really does is reformat the line spacing, page geometry, section headings, and footnotes as well as create a title page that conforms to the SBLHS.

##biblatex-sbl.sty

The bibliography is handled by biblatex using biber as the backend—I'm sure you could do without biber, but why? The only function of biblatex-sbl.sty is to renew a few macros present in biblatex-chicago that are slightly different than what the bibaltex-chicago package defines. At the time of writing, the primary function is to add "shortjournal" and "shortseries" fields to footnotes to prevent the verbose output that is the default of bibaltex-chicago.