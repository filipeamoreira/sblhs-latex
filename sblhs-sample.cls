% SBL Essay.cls v. 0.1 2012/12/10

% Copyright (c) 2012 Jack Weinbender.  This package can be accessed
% via github at https://github.com/jackweinbender/sbl-latex.git
%
% This work may be copied, distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3 of
% this license or (at your option) any later version.  The latest
% version of this license is in http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX version
% 2005/12/01 or later.  This software is provided as is,
% without warranty of any kind, either expressed or implied, including,
% but not limited to, the implied warranties of merchantability and
% fitness for a particular purpose.


\ProvidesClass{sblhs-sample}[2012/12/10 v.01 SBL Writing Sample]

%%	Load 12pt article class
  \LoadClass[12pt]{article}

%%	Set page geometry, margins, etc.
  \RequirePackage[letterpaper,margin=.9in,]{geometry}

%%	Set double-spacing for the whole document
\RequirePackage{setspace}
  \setstretch{2.0}


%%	Set fonts
  \usepackage{fontspec}
  \usepackage{xunicode}
  \defaultfontfeatures{Mapping=tex-text} % To support LaTeX quoting style
  \setromanfont{Linux Libertine}

%% Include lanuguage support
\RequirePackage{sblhs-languages}


% Set Ragged Right
% Ragged right settings
\RequirePackage{ragged2e}
\setlength\RaggedRightParindent{.5in}
\setlength\RaggedRightRightskip{2pt plus 1fil}
\RaggedRight

%More Reasonable Quote Environment
\renewenvironment{quote}
 {\list{}{\itemsep       \z@%
          \itemindent    \z@%
          \listparindent \z@%
          \leftmargin    0.5in%
          \rightmargin   0.5in%
          \partopsep     \z@%
          \topsep        -0ex \@plus 0.5ex \@minus 0.5ex%
          \parsep        0ex \@plus 0.25ex}%
  \item\relax\singlespacing}
 {\endlist%
  \global\parindent 0.5in}


% Section headings
\renewcommand\part{\@startsection {part}{0}{\z@}%
  {6pt\@plus -1ex \@minus -.2ex}%
  {12pt \@minus -.2ex}%
  {\clearpage\centering\singlespacing\vspace*{66pt}\MakeUppercase}}
\renewcommand\section{\@startsection {section}{1}{\z@}%
  {6pt\@plus -1ex \@minus -.2ex}%
  {0.5ex \@plus .2ex}%
  {\clearpage\centering\singlespacing\vspace*{66pt}\MakeUppercase}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
  {6pt \@plus -1ex \@minus -.2ex}%
  {0.5ex \@plus .2ex}%
  {\centering\bfseries\itshape}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
  {6pt \@plus -1ex \@minus -.2ex}%
  {0.5ex \@plus .2ex}%
  {\flushleft\singlespacing\bfseries\itshape}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
  {6pt \@plus -1ex \@minus -.2ex}%
  {0.5ex \@plus .2ex}%
  {\flushleft\singlespacing}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
  {6pt \@plus -1ex \@minus -.2ex}%
  {0.5ex \@plus .2ex}%
  {\em}}

%Bibliography Style (based on biblatex-chicago)
\RequirePackage{biblatex-sblhs}

%%New Title Page
\renewcommand{\maketitle}{%
	\thispagestyle{empty}
	\setcounter{page}{0}
	\begin{center}
		\singlespace
		\vspace*{1in}
		\MakeUppercase \@title
		\vfill
		by\\[1em]
		\@author\\[2in]
		A paper submitted in partial fulfillment of\\
    		the requirements for\\ \@coursenumber{} \@coursetitle\\
    	\@professor \\[1in]
	\singlespacing 	\@institution\\
  \@address\\
  \@date
	\end{center}
	\section*{\@title}
	}

\def\title#1{\gdef\@title{#1}}
\def\@title{Title of Paper}
\def\author#1{\gdef\@author{#1}}
\def\@author{[Your name]}

\def\coursenumber#1{\gdef\@coursenumber{#1}}
\def\@coursenumber{[Course Number}
\def\coursetitle#1{\gdef\@coursetitle{#1}}
\def\@coursetitle{and Title]}
\def\professor#1{\gdef\@professor{#1}}
\def\@professor{[Name of Professor]}

\def\institution#1{\gdef\@institution{#1}}
\def\@institution{[Name of Institution]}
\def\address#1{\gdef\@address{#1}}
\def\@address{[City, State]}