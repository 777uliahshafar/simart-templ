%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Simple Article
% Integrated article template with simple for make4ht
% LaTeX Class
% Version 1.0 (10/11/20)
%
% This class originates by:
% Vel and  Nicolas Diaz
%
% Authors:
% Muhammad Uliah Shafar
%
%
% Free License:
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%	CLASS CONFIGURATION
%----------------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{simart}[2020/11/10 Simart Class v1.0]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}} % Pass through any options to the base class
\ProcessOptions\relax % Process given options

\LoadClass{article} % Load the base class

%----------------------------------------------------------------------------------------
%	PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------
% PREAMBLE OF ENGLISH LANGUAGE HYPHENATION
%\usepackage[english]{babel} %PdfLatex Compiler Engine
\usepackage{polyglossia} %LuaLatex Compiler Engine
\setmainlanguage[variant=indonesian]{malay}
\setotherlanguages{english}
\PolyglossiaSetup{malay}{indentfirst=true}
%\setmainfont{Times New Roman} 

% Rename caption's command for bahasai
\addto\captionsmalay{
    \renewcommand{\abstractname}{Ringkasan}
}
% Rename caption's command for english
\addto\captionsenglish{
    \renewcommand{\figurename}{Gambar}
    \renewcommand{\tablename}{Tabel}
    \renewcommand{\abstractname}{ABSTRACT}
}

% Syntax will be active after first compile
%\usepackage{comment}

%----------------------------------------------------------------------------------------
% PREAMBLE OF FIGURES

\usepackage{graphicx}

\graphicspath{{figures/}{../figures/}}% Specifies where to look for included images (trailing slash required)
%\graphicspath{{figures/}{./}}

%\usepackage{wrapfig} % Allows in-line images
%\usepackage{subcaption} %Subfigure component
%\usepackage[labelformat=parens,labelsep=quad, skip=3pt]{caption}  %Subcaption in 2 column img

\usepackage[labelsep=period,labelfont=onehalfspacing]{caption}%Use caption* for add source
\setlength\belowcaptionskip{-10pt} %Reduce spacing caption figures


%\setkeys{Gin}{draft} %Render image for draft

%----------------------------------------------------------------------------------------
% PREAMBLE OF TABLE AND LIST

\usepackage{tabularx}
\usepackage{booktabs} % Required for better horizontal rules in tables
%\usepackage{multirow}

%\usepackage{makecell} %line break inside table. Alternatively, for a single cell, you can use the \makecell or
%\renewcommand\theadalign{bc}  %\thead commands with the optional argument [vh], v is t,c, or b. h is l,c,or r
%\renewcommand\theadfont{\bfseries}
%\renewcommand\theadgape{\Gape[4pt]}
%\renewcommand\cellgape{\Gape[4pt]}

\usepackage{paralist} %Inline list(inparaenum), always on top of enumitem
%\usepackage{longtable} % Enable table cross multiple page
%\usepackage{array} %Mostly formatting columns and spacing
\usepackage{enumitem} % Required for list customisation

\setlist{noitemsep} % No spacing between list items
\setlist[itemize]{label=\textbullet, nosep, topsep=0pt, partopsep=0pt, parsep=0pt} % No spacing between itemize

% Remove spacing between itemize env. inside table env., first column type for enumerate(e), second coulmn type for itemize(i)
%\makeatletter
%\newcolumntype{e}[1]{%
%    >{\minipage[t]{\linewidth}\let\\\tabularnewline
%      \enumerate
%      \addtolength{\rightskip}{0pt plus 50pt}% for raggedright
%      \setlength{\itemsep}{-\parsep}}%
%    p{#1}%
%    <{\@finalstrut\@arstrutbox\endenumerate\endminipage}}
%
%\newcolumntype{i}[1]{%
%    >{\minipage[t]{\linewidth}\let\\\tabularnewline
%      \itemize
%      \addtolength{\rightskip}{0pt plus 50pt}% for raggedright
%      \setlength{\itemsep}{-\parsep}}%
%    p{#1}%
%    <{\@finalstrut\@arstrutbox\enditemize\endminipage}}
%\makeatother

%----------------------------------------------------------------------------------------
% PREAMBLE OF BIBLIOGRAPHY
\usepackage[round]{natbib}
\setcitestyle{open={(},close={)}}
%\def\biblio{\bibliographystyle{apalike}\bibliography{references.bib}} % bliography in subfile use with onlysubfile

\makeatletter
\renewcommand\@biblabel[1]{\textbf{#1.}} % Remove the square brackets from each bibliography item ('[1]' to '1.')
\makeatother

%\renewcommand{\bibsection}{\noindent\textbf{ DAFTAR PUSTAKA}} %Change Title Bibliography

%----------------------------------------------------------------------------------------
% CONFIGURATION OF SUBFILE
\usepackage{subfiles}
\newcommand{\onlyinsubfile}[1]{#1}
\newcommand{\notinsubfile}[1]{}

%----------------------------------------------------------------------------------------
% CONFIGURATION OF TEXT(PARAGRAPH, SECTION, DATE, OTHERS)


\usepackage{lipsum} % Add  dummy text
\usepackage[hidelinks]{hyperref}
\usepackage{setspace} %Alter spacing in paragraph
\onehalfspacing %Specify spacing of setspace

%\setlength{\parindent}{35pt} %Alter indentation

%\usepackage{indentfirst} %Indent the first paragraph
%\providecommand{\keywords}[1]{\textbf{\textit{Keywords---}} #1} %Insert Keyword Command

%\usepackage[bahasai,showdow, calc]{datetime2} %Formating date or DTMtoday command, files ldf needs customization.
%----------------------------------------------------------------------------------------
% PRINT CODE IN LATEX DOCUMENT
\usepackage{listings}
\lstdefinestyle{fixprintcode}{
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,
    breaklines=true,
    captionpos=b,
    keepspaces=true,
    numbers=none,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    tabsize=2,
    frame=trBL}

    \lstset{style=fixprintcode}
%----------------------------------------------------------------------------------------
% CONFIGURATION OF TIKZ
% often show undefined control sequence when put over some code
%\usepackage{tikz}
%\usetikzlibrary{shapes.geometric, arrows}
%
%% Configuration of Tikz FlowChart
%\tikzstyle{startstop} = [rectangle, rounded corners, minimum width=3cm, minimum height=1cm,text centered, draw=black]
%
%\tikzstyle{arrow} = [thick,->,>=stealth]
%\tikzstyle{doublearrow} = [densely dotted,<->,>=stealth]
%\tikzstyle{dotted} = [loosely dotted,>=stealth]


%----------------------------------------------------------------------------------------
%	DOCUMENT MARGINS
%----------------------------------------------------------------------------------------

\usepackage{geometry} % Required for adjusting page dimensions and margins

\geometry{
	paper=a4paper, % Paper size, change to letterpaper for US letter size
	top=2.5cm, % Top margin
	bottom=3cm, % Bottom margin
	left=4cm, % Left margin
	right=4cm, % Right margin
	headheight=0.75cm, % Header height
	footskip=1.5cm, % Space from the bottom margin to the baseline of the footer
	headsep=0.75cm, % Space from the top margin to the baseline of the header
	%showframe, % Uncomment to show how the type block is set on the page
}

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------
%----------------------------------------------------------------------------------------
% LUALATEX FONT
\usepackage{fontspec}
%\setmainfont{Arial} %Altex main font documents, default= Modern
% \setmainfont[%
% 	ItalicFont=NewCM10-Italic.otf,%
% 	BoldFont=NewCM10-Bold.otf,%
% 	BoldItalicFont=NewCM10-BoldItalic.otf,%
% 	SmallCapsFeatures={Numbers=OldStyle}]{NewCM10-Book.otf}
% font can be downloaded : https://ctan.org/tex-archive/fonts/newcomputermodern/otf
% other good font used in dark mode pdf is poppins Poppins-Regular.ttf

% PdfLATEX FONT
%\usepackage[utf8]{inputenc} % Required for inputting international characters
%\usepackage[T1]{fontenc} % Use 8-bit encoding

%\usepackage[protrusion=true, expansion=true]{microtype} % Better typography

%\linespread{1.05} % Increase line spacing slightly; Palatino benefits from a slight increase by default

%----------------------------------------------------------------------------------------
%	TITLE SECTION
%----------------------------------------------------------------------------------------

\usepackage{titlesec}
\makeatletter


\renewcommand{\thesection}{\Roman{section}}%Format section number
\renewcommand \thesubsection{\arabic{section}.\arabic{subsection}}

\titleformat{\section} %command
[display]%shape
{\normalfont\fontsize{11}{15}\filcenter\bfseries}%format
{BAB \thesection}%label
{0pt}%sep
{\vspace{-4pt}}%before-title
[]%after-title

\titleformat{\subsection} %command
%shape
{\normalfont\fontsize{11}{15}\bfseries}%format
{\thesubsection}%label
{20pt}%sep
{}%before-title
[]%after-title

\titlespacing\section{0pt}%left
{11pt plus 4pt minus 2pt}%before
{11pt plus 2pt minus 2pt}%after

\titlespacing\subsection{0pt}{22pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}

%----------------------------------------------------------------------------------------
% MAIN TITLE STYLE
\makeatletter
\renewcommand{\maketitle}{ % Customise the title (do not edit title and author name here)

	\begin{center} % align
		\begin{singlespace}
		\@title % Increase the font size of the title
		\@date % Date
		\end{singlespace}
		\vspace{11pt}
	\begin{onehalfspacing}
		\@author\\ % Author name
	\end{onehalfspacing}
	\vspace{11pt}
		\end{center}
}
\makeatother

%----------------------------------------------------------------------------------------
% OTHER TITLE STYLE

%\makeatletter
%\renewcommand{\maketitle}{ % Customise the title (do not edit title and author name here)
%	\vspace*{30pt} % Vertical whitespace before the title
%	\begin{flushright} % Right align
%		{\LARGE\@title} % Increase the font size of the title
%
%		\vspace{50pt} % Vertical whitespace between the title and author name
%
%		{\large\@author}\\ % Author name
%		\@date % Date
%
%		\vspace{40pt} % Vertical whitespace between the author block and abstract
%	\end{flushright}
%}
%\makeatother




%----------------------------------------------------------------------------------------
%	HEADERS AND FOOTERS
%----------------------------------------------------------------------------------------

\usepackage{fancyhdr} % Required for customising headers and footers
\pagestyle{fancy} % Enable custom headers and footers

\renewcommand{\headrulewidth}{0pt} % Remove default top horizontal rule
\lhead{} % Left header
\chead{} % Centre header
\rhead{} % Right header
\lfoot{} % Left footer
\cfoot{\thepage} % Centre footer
\rfoot{} % Right footer

%----------------------------------------------------------------------------------------
%       MAKE4HT/HELPERS4HT
%----------------------------------------------------------------------------------------

%\usepackage{mystyles} %Change fonts color,size with command \myhighlight
%\usepackage{myspacing} %Change linespacing via environment e.g onehalf.
