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


\ProvidesClass{sblhs-thesis}[2013/02/14 v.01 SBL Thesis]

%%  Load 12pt article class
  \LoadClass[12pt, oneside]{book}
  \pagestyle{myheadings}

%%  Set Fnote font size to match body text
%% \let\footnotesize

%%  Set page geometry, margins, etc.
  \RequirePackage[letterpaper,margin=0.9in,inner=1.5in]{geometry}

%%  Set double-spacing for the whole document
\RequirePackage{setspace}
  \setstretch{2.1}


%%  Set fonts
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

%% Sectioning %%
\usepackage{titlesec}

% Chapter
\titleformat{\chapter}[display]{\normalfont\filcenter}{\MakeUppercase{Chapter \thechapter:}}{1ex}{}[]
\titlespacing{\chapter}{0ex}{0ex}{0pt}[0ex]

% Section
\titleformat{\section}[block]{\normalfont\bfseries\filcenter}{\thesection}{2ex}{}[]
\titlespacing{\section}{0ex}{0ex}{0pt}[0ex]

% Subsection
\titleformat{\subsection}[block]{\normalfont\it}{\thesubsection}{1ex}{}[]
\titlespacing{\subsection}{0ex}{0ex}{0pt}[0ex]

% Subsubsection
\titleformat{\subsubsection}[block]{\normalfont\it}{\thesubsubsection}{1ex}{}[]
\titlespacing{\subsubsection}{0ex}{0ex}{0pt}[0ex]


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
    by\\[12pt]
    \@author\\[0.75in]
    A thesis submitted in partial fulfillment of the requirements for the degree of\\
    \@degree{}\\[1in]
    Area of \@area{}\\[0.25in]
  \singlespacing  \@institution\\
  \@address\\[0.75in]
  \@date
  \end{center}
  \newpage
  }

\def\title#1{\gdef\@title{#1}}
\def\@title{Title of Paper}
\def\author#1{\gdef\@author{#1}}
\def\@author{[Your name]}

\def\degree#1{\gdef\@degree{#1}}
\def\@degree{[DEGREE}
\def\area#1{\gdef\@area{#1}}
\def\@area{[AREA]}

\def\institution#1{\gdef\@institution{#1}}
\def\@institution{[Name of Institution]}
\def\address#1{\gdef\@address{#1}}
\def\@address{[City, State]}