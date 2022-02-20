% LaTeX class for easier TikZ demonstration
% Malte Schmitz - October 2017

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{easytikz}

% load the KOMA-Script article class
\LoadClass{scrartcl}

% set page dimensions
\RequirePackage{geometry}
\geometry{paperwidth=128mm,paperheight=96mm,margin=1cm}

% hide header and footer
\pagestyle{empty}

% input encoding
\RequirePackage[utf8]{inputenc}

% new german spelling
\RequirePackage[ngerman]{babel}

% choose font
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}

% KOMA-Script options
\KOMAoptions{parskip=full}

% color
\RequirePackage{xcolor}

% TikZ
\RequirePackage{tikz}
\usetikzlibrary{positioning,%
  fit,%
  arrows,%
  automata,%
  trees,%
  intersections,%
  mindmap,%
  shapes.geometric,%
  shapes.arrows,%
  decorations,%
  decorations.pathmorphing,%
  decorations.pathreplacing,%
  matrix,%
  chains,%
  scopes,%
  circuits,%
  circuits.ee.IEC,%
  calc,%
  fadings,%
  lindenmayersystems,%
  decorations.markings%
}

\tikzset{
  level/.style={
    sibling distance=20mm/#1
  },
  level distance=10mm,
}

% math
\RequirePackage{amsmath}

% set special behaviour for hyperlinks in pdfs
\RequirePackage[breaklinks=true]{hyperref}

% center content on page
% \let\orgdocument\document
% \let\orgenddocument\enddocument
% \renewenvironment{document}{%
%   \orgdocument
%   \center\null\vfill
% }{%
%   \vfill\endcenter
%   \orgenddocument
% }