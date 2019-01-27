\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{math174}[2019/01/27 HMC Math 174 (Representation Theory) base document class]

\LoadClass[twoside]{article}

% load packages
%% basic packages
\RequirePackage[ascii]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{microtype}

%% for document setup
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{titling}

%% fonts and text styles
\RequirePackage{lmodern}
\RequirePackage{parskip}

%% math
\RequirePackage{
  amsmath,
  amsthm,
  amssymb,
  amsfonts,
}
\RequirePackage{mathtools, thmtools}

%% utility packages
\RequirePackage{mdframed}
\RequirePackage{cancel}
\RequirePackage{lastpage}
\RequirePackage{multicol}
\RequirePackage{color}
\RequirePackage{tikz}
\RequirePackage{hyperref}
\RequirePackage{marginnote}
\RequirePackage{isomath}
\RequirePackage{nicematrix}
\RequirePackage{centernot}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage[inline]{enumitem}
\RequirePackage{fancyref}

% document setup
%% page dimensions
\geometry{
  top=.5in,
  bottom=.5in,
  right=1in,
  left=1in,
  headheight=3em,
  headsep=1em,
  marginparwidth=1.125in,
  marginparsep=.125in,
  includeheadfoot,
}

%% document metadata
\newcommand{\thecourse}{Math 174: Representation Theory}
\newcommand{\theterm}{Spring 2019}
\newcommand{\thecoauthor}{}
\newcommand{\coauthor}[1]{\renewcommand{\thecoauthor}{#1}}

\newcommand{\assignment}[1]{\newcommand{\theassignment}{#1}}
\newcommand{\homework}[1]{\assignment{Homework #1}}
\newcommand{\criticalreading}[1]{\assignment{Critical Reading #1}}

\newcommand{\contents}[1]{\newcommand{\thecontents}{#1}}
\newcommand{\sections}[1]{\contents{\textsc{sections}: #1}}
\newcommand{\problems}[1]{\contents{\textsc{problems}: #1}}

%% page decoration
\fancypagestyle{math174}{
  \fancyhf{}
  \chead{
    \textbf{\theassignment}\\
    {\small\textsc{\thecourse{} -- \theterm}}\\
  }
  \rhead{
    \mbox{\small\theauthor}\\
    \mbox{\small\thecoauthor}\\
  }
  \lhead{
    \mbox{\small Due \thedate}\\
    \mbox{}\\
    {\footnotesize\thecontents}
}
  \cfoot{\small{\textsc{\thepage{} of \pageref{LastPage}}}}
}

\pagestyle{math174}

%% list styles

%% hyperlink styles
\hypersetup{
  colorlinks=true,
  urlcolor=blue!50!green,
  linkcolor=black,
}

% theorem environments
\declaretheoremstyle[
  spaceabove=1em,
  numbered=no,
  bodyfont=\normalfont,
  headfont=\bfseries,
]{theorem}

\declaretheoremstyle[
  spaceabove=1em,
  numbered=no,
  bodyfont=\normalfont,
  headfont=\scshape,
]{minitheorem}

\declaretheorem[style=theorem]{claim}
\declaretheorem[style=theorem]{lemma}
\declaretheorem[style=theorem]{corollary}
\declaretheorem[style=minitheorem, title=Base case]{basecase}
\declaretheorem[style=minitheorem, title=Inductive step]{inductivestep}

% pset-related environments and commands

\declaretheoremstyle[
  spaceabove=1em,
  numbered=no,
  headfont=\bfseries,
  bodyfont=\normalfont,
]{problem}
\declaretheorem[
style=problem,
postheadhook={\setlist[enumerate]{label=(\alph*)}},
]{problem}
\newenvironment{solution}{\begin{mdframed}}{\end{mdframed}}

% mdframed spacing settings
\mdfsetup{
  skipabove=1em,
}

% math commands

%% vector and matrix bold fonts
\renewcommand{\vec}{\mathbfit}
\newcommand{\mat}{\mathbf}

%% special operators
\DeclareMathOperator{\inv}{inv}

%% common blackboard-bold symbols
\newcommand{\ZZ}{\mathbb Z}
\newcommand{\RR}{\mathbb R}
\newcommand{\QQ}{\mathbb Q}
\newcommand{\CC}{\mathbb C}
\newcommand{\KK}{\mathbb K}
\newcommand{\NN}{\mathbb N}
\newcommand{\PP}{\mathbb P}
\newcommand{\VV}{\mathbb V}

% transpose and complement
\newcommand{\T}{\mathsf{T}}
\newcommand{\M}{\mathsf{M}}
\newcommand{\C}{\mathsf{C}}
\renewcommand{\complement}{\C}

%% differential operators
\newcommand{\odif}{\mathop{}\! \mathrm d}
\newcommand{\dif}{\odif}
\newcommand{\pdif}{\mathop{}\! \partial}

\newcommand{\od}[3][]{\frac{\odif^{#1} {#2}}{\odif {#3}^{#1}}}
\newcommand{\pd}[3][]{\frac{\pdif^{#1} {#2}}{\pdif {#3}^{#1}}}

%% brackets & delimiters
\newcommand{\abs}[1]{\lvert {#1} \rvert}
\newcommand{\norm}[1]{\lVert {#1} \rVert}
\newcommand{\abracket}[1]{\langle {#1} \rangle}
\newcommand{\inner}{\abracket}
\newcommand{\floor}[1]{\lfloor {#1} \rfloor}
\newcommand{\ceil}[1]{\lceil {#1} \rceil}
\newcommand{\paren}[1]{( {#1} )}
\newcommand{\bracket}[1]{[ {#1} ]}
\newcommand{\curly}[1]{\{ {#1} \}}
\newcommand{\set}{\curly}
\newcommand{\setst}[2]{\set{{#1} \; : \; {#2}}}

\newcommand{\Abs}[1]{\left\lvert {#1} \right\rvert}
\newcommand{\Norm}[1]{\left\lVert {#1} \right\rVert}
\newcommand{\Abracket}[1]{\left\langle {#1} \right\rangle}
\newcommand{\Inner}{\Abracket}
\newcommand{\Floor}[1]{\left\lfloor {#1} \right\rfloor}
\newcommand{\Ceil}[1]{\left\lceil {#1} \right\rceil}
\newcommand{\Paren}[1]{\left( {#1} \right)}
\newcommand{\Bracket}[1]{\left[ {#1} \right]}
\newcommand{\Curly}[1]{\left\{ {#1} \right\}}
\newcommand{\Set}{\Curly}
\newcommand{\Setst}[2]{\Set{{#1} \; : \; {#2}}}

\newcommand{\eval}[1]{\bigg\rvert_{#1}}