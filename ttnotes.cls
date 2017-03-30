\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ttnotes}[]
\LoadClass[a4paper]{article}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{dsfont}
\RequirePackage{amsthm}
\RequirePackage{prooftree}
\RequirePackage{mathpazo}
\RequirePackage{hyperref}
\RequirePackage{mdframed}
\RequirePackage{cite}
\hypersetup{
    pdftex,
    pdfpagemode=UseOutlines
}
\theoremstyle{definition}
\newtheorem{example}{Example}[section]
\newtheorem{exercise}{Exercise}[section]
\newtheorem{proposition}{Proposition}[section]
\newtheorem{theorem}{Theorem}[section]
\newtheorem{definition}{Definition}[section]
\newtheorem{lemma}{Lemma}[section]

\newcommand{\strong}[1]{\textbf{#1}}
\newcommand{\hsetj}[2]{#1 \; \text{set} \; (#2)}
\newcommand{\setj}[1]{#1 \; \text{set}}
\newcommand{\hinj}[3]{#1 \in #2 \; (#3)}
\newcommand{\eqelj}[3]{#1 = #2 \in #3}
\newcommand{\heqelj}[4]{#1 = #2 \in #3 \; (#4)}
\newcommand{\seteqj}[2]{#1 = #2}
\newcommand{\hseteqj}[3]{#1 = #2 \; (#3)}
\newcommand{\inj}[2]{#1 \in #2}
\newcommand{\insub}[0]{\varepsilon}
\newcommand{\injsub}[2]{#1 \insub #2}
\newcommand{\notinjsub}[2]{#1 \not\insub #2}
\newcommand{\hpropj}[2]{#1 \; \text{prop} \; (#2)}
\newcommand{\NN}{\mathbb{N}}
\newcommand{\natrec}[3]{\textsf{R}(#1, #2, #3)}
\newcommand{\ap}[2]{\textsf{Ap}(#1, #2)}
\newcommand{\abs}[2]{(\lambda #1)(#2)}
\newcommand{\setpow}[1]{\mathcal{P}#1}
\newcommand{\complset}[1]{\overline{#1}}

\newcommand{\ndderives}[2]{
  \begin{array}{@{}c}
    #1 \\
    #2
  \end{array}}

\newcommand{\derives}[2]{\[#1 \proofdotnumber=0 \leadsto #2\]}
\newcommand{\derivesfrom}[3]{\[#1 \using #2 \proofdotseparation=1.2ex
    \proofdotnumber=4 \leadsto #3\]}

\newcommand{\pitype}[2]{\prod_{#1} #2}
\newcommand{\bigpity}[2]{\displaystyle \prod_{#1} #2}
\newcommand{\smallpity}[2]{\textstyle{\prod}_{#1} #2}
\newcommand{\piab}{\smallpity{x\in A}{B(x)}}

\newcommand{\sigmatype}[2]{\sum_{#1} #2}
\newcommand{\sigmaab}{\smallsigmaty{x\in A}{B(x)}}
\newcommand{\smallsigmaty}[2]{\textstyle{\sum}_{#1} #2}
\newcommand{\bigsigmaty}[2]{\displaystyle \sum_{#1} #2}

\newcommand{\pair}[2]{\langle #1, #2 \rangle}
\newcommand{\fst}[1]{\textsf{fst}(#1)}
\newcommand{\snd}[1]{\textsf{snd}(#1)}

\newcommand{\onety}{\mathds{1}}
\newcommand{\twoty}{\textsf{2}}
\newcommand{\nty}[1]{\mathds{N}_{#1}}

\newcommand{\ttrue}{\textsf{true}}
\newcommand{\ffalse}{\textsf{false}}

\newcommand{\subst}[2]{[#2/#1]}

% Judgement forms
\newcommand{\tyj}[2]{#1 \, : \, #2}
\newcommand{\ctxtj}[1]{#1 \; \text{cont}}
\newcommand{\propj}[1]{#1 \; \text{prop}}
\newcommand{\truej}[1]{#1 \; \text{true}}

\newcommand{\gammactxt}{\Gamma \, \text{cont}}

% Rule labels
\newcommand{\andintrorule}{\wedge \mathcal{I}}
\newcommand{\implelimrule}{\supset \mathcal{E}}
\newcommand{\orintrorule}{\vee \mathcal{I}}
\newcommand{\orelimrule}{\vee \mathcal{E}}

% Constructors for propositions
\newcommand{\inleft}[2]{\textsf{inl}_{#1}(#2)}
\newcommand{\inright}[2]{\textsf{inr}_{#1}(#2)}
\newcommand{\implctor}[2]{\lambda #1 . #2}
\newcommand{\forallctor}[2]{\lambda #1 . #2}

% Eliminators for propositions
\newcommand{\andelimleftop}[1]{\fst{#1}}
\newcommand{\andelimrightop}[1]{\snd{#1}}
\newcommand{\orelimop}[3]{\textsf{case}(#1, #2, #3)}
\newcommand{\implelimop}[2]{\textsf{Ap}(#1, #2)}
\newcommand{\forallelimop}[2]{\textsf{Ap}(#1, #2)}
\newcommand{\falseelimop}[2]{\textsf{abort}_{#1}(#2)}
\newcommand{\existselimop}[2]{\textsf{E}(#1, #2)}

% Logical connectives
\newcommand{\andconn}[2]{#1 \wedge #2}
\newcommand{\orconn}[2]{#1 \vee #2}
\newcommand{\implconn}[2]{#1 \supset #2}
\newcommand{\notconn}[1]{\neg #1}
\newcommand{\forallconn}[3]{(\forall \inj{#1}{#2})#3}
\newcommand{\existsconn}[3]{(\exists \inj{#1}{#2})#3}
\newcommand{\trueconn}{\top}
\newcommand{\falseconn}{\bot}

\newcommand{\newdefn}[1]{\textbf{#1}} % Use this whenever a new concept is defined

