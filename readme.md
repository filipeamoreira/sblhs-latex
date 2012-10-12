# SBL Latex

At this very early stage of development, this class is basically just a slightly altered "article" class document using the biblatex-chicago bibliography style (with a couple small changes). The current version works best when compiled with xelatex and biber.

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

