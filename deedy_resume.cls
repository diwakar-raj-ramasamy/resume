\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{deedy_resume}[2023/12/02 Deedy Resume Single Column Minimal]

\LoadClass{article}

% Minimal Packages
\RequirePackage[T1]{fontenc}
\RequirePackage{helvet} % Standard sans-serif font
\RequirePackage[hidelinks]{hyperref} % Required for links
\RequirePackage{geometry}
\RequirePackage{xcolor}

% Page Layout
\geometry{
    a4paper,
    top=1.5cm,
    bottom=1.5cm,
    left=2cm,
    right=2cm
}

% Colors
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{secondary}{HTML}{444444}

% Fonts
\renewcommand{\familydefault}{\sfdefault}

% Header
\newcommand{\namesection}[3]{
    \centering
    {\Huge\bfseries\color{primary} #1} \\[5pt]
    {\color{secondary} #2} \\
    {\color{secondary} #3}
    \vspace{10pt}
    \hrule
    \vspace{10pt}
}

% Manual Section Formatting (No titlesec)
\renewcommand{\section}[1]{
    \vspace{12pt}
    {\Large\bfseries\color{primary}\uppercase{#1}}
    \par\vspace{4pt}
    \hrule
    \vspace{8pt}
}

% Subsection Formatting (No titlesec)
\newcommand{\runsubsection}[1]{
    \color{primary}\bfseries\large #1 \hfill
}

\newcommand{\descript}[1]{
    \color{secondary}\raggedright \textit{#1} \\
}

\newcommand{\location}[1]{
    \color{secondary}\raggedright #1 \\
}

\newcommand{\sectionsep}{\vspace{8pt}}

% Custom List Environment (No enumitem)
\newenvironment{tightemize}{
    \begin{itemize}
    \setlength{\itemsep}{0pt}
    \setlength{\parskip}{0pt}
    \setlength{\parsep}{0pt}
}{
    \end{itemize}
}
