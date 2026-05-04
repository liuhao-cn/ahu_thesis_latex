%
% Latex template for AHU undergraduate thesis, made by Hao Liu, 2026-04-16
% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ahuthesis}[2026/04/16 Anhui University science thesis template]

\RequirePackage{iftex}
\ifXeTeX\else
  \ClassError{ahuthesis}{This template requires XeLaTeX}{Please compile the document with xelatex.}
\fi

\LoadClass[a4paper,12pt,UTF8,fontset=none]{ctexart}

\RequirePackage{fontspec}
\RequirePackage{xeCJK}
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{tocloft}
\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{indentfirst}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
\RequirePackage{ahu_citation}

\makeatletter

% 页面与全文基础参数。
\newcommand{\ahu@pageleftmargin}{28mm}
\newcommand{\ahu@pagerightmargin}{26mm}
\newcommand{\ahu@pagetopmargin}{25mm}
\newcommand{\ahu@pagebottommargin}{25mm}
\newcommand{\ahu@paragraphindent}{2\ccwd}
\newcommand{\ahu@paragraphskip}{0pt}
\newcommand{\ahu@secnumdepthvalue}{4}
\newcommand{\ahu@tocdepthvalue}{3}

% 字号与行距参数。
\newcommand{\ahu@bodyfontsize}{10.8bp}
\newcommand{\ahu@bodyleading}{18bp}
\newcommand{\ahu@tocfontsize}{12bp}
\newcommand{\ahu@tocleading}{20bp}
\newcommand{\ahu@titlefontsize}{36bp}
\newcommand{\ahu@titleleading}{43bp}
\newcommand{\ahu@coverfieldfontsize}{14.0bp}
\newcommand{\ahu@coverfieldleading}{21.6bp}
\newcommand{\ahu@coverlabelfontsize}{14.0bp}
\newcommand{\ahu@coverlabelleading}{21.6bp}
\newcommand{\ahu@coverhintfontsize}{22bp}
\newcommand{\ahu@coverhintleading}{28bp}
\newcommand{\ahu@cnabstracttitlefontsize}{20bp}
\newcommand{\ahu@cnabstracttitleleading}{25bp}
\newcommand{\ahu@cnabstractheadingfontsize}{17.5bp}
\newcommand{\ahu@cnabstractheadingleading}{22bp}
\newcommand{\ahu@heifourfontsize}{14bp}
\newcommand{\ahu@heifourleading}{20bp}
\newcommand{\ahu@heithreefontsize}{16bp}
\newcommand{\ahu@heithreeleading}{20bp}
\newcommand{\ahu@fangsongfivefontsize}{11bp}
\newcommand{\ahu@fangsongfiveleading}{16bp}
\newcommand{\ahu@tocheadingfontsize}{16bp}
\newcommand{\ahu@tocheadingleading}{22bp}
\newcommand{\ahu@englishfivefontsize}{10.5bp}
\newcommand{\ahu@englishfiveleading}{16bp}
\newcommand{\ahu@englishsmallfourfontsize}{12bp}
\newcommand{\ahu@englishsmallfourleading}{20bp}
\newcommand{\ahu@englishfourfontsize}{14bp}
\newcommand{\ahu@englishfourleading}{20bp}
\newcommand{\ahu@footerfontsize}{10.5bp}
\newcommand{\ahu@footerleading}{10.5bp}
\newcommand{\ahu@captionfontsize}{12bp}
\newcommand{\ahu@captionleading}{20bp}
\newcommand{\ahu@keywordfontsize}{12bp}
\newcommand{\ahu@keywordleading}{20bp}
\newcommand{\ahu@headingfontsize}{12bp}
\newcommand{\ahu@headingleading}{20bp}

% 封面布局参数。
\newcommand{\ahu@coverwidthvalue}{132.7mm}
\newcommand{\ahu@covertopskip}{12mm}
\newcommand{\ahu@covertitlesep}{2mm}
\newcommand{\ahu@coverblocktopskip}{22mm}
\newcommand{\ahu@covertitlelinesep}{2.0mm}
\newcommand{\ahu@covertitleblocksep}{8.0mm}
\newcommand{\ahu@coverrowsep}{2.0mm}
\newcommand{\ahu@covercommonlabelwidth}{26.5mm}
\newcommand{\ahu@coverstudentnamewidth}{74.2mm}
\newcommand{\ahu@coverstudentidlabelwidth}{16mm}
\newcommand{\ahu@coverdepartmentwidth}{74.2mm}
\newcommand{\ahu@covermajorlabelwidth}{16mm}
\newcommand{\ahu@coversupervisorwidth}{63.7mm}
\newcommand{\ahu@coversupervisortitlelabelwidth}{28.2mm}
\newcommand{\ahu@coverunitlabelwidth}{37.2mm}

% 目录、标题与摘要等部分的间距参数。
\newcommand{\ahu@captiongap}{6bp}
\newcommand{\ahu@headinglabelsep}{1\ccwd}
\newcommand{\ahu@headingbeforeskip}{0pt}
\newcommand{\ahu@headingafterskip}{0pt}
\newcommand{\ahu@tocdotsepvalue}{1}
\newcommand{\ahu@tocbeforetitleskip}{16mm}
\newcommand{\ahu@tocaftertitleskip}{16mm}
\newcommand{\ahu@tocentryskip}{0pt}
\newcommand{\ahu@tocsecindentvalue}{0pt}
\newcommand{\ahu@tocsubsecindentvalue}{0pt}
\newcommand{\ahu@tocsubsubsecindentvalue}{0pt}
\newcommand{\ahu@tocsecnumwidthvalue}{2.5em}
\newcommand{\ahu@tocsubsecnumwidthvalue}{3.5em}
\newcommand{\ahu@tocsubsubsecnumwidthvalue}{4.5em}
\newcommand{\ahu@abstracttopskip}{16mm}
\newcommand{\ahu@abstracttitlesep}{14mm}
\newcommand{\ahu@abstractbodysep}{14mm}
\newcommand{\ahu@keywordindent}{2\ccwd}
\newcommand{\ahu@bibliographytitle}{主要参考文献}
\newcommand{\ahu@bibliographystyle}{ahu_citation}
\newcommand{\ahu@bibliographytitleindent}{2\ccwd}
\newcommand{\ahu@bibliographyitemsep}{0pt}
\newcommand{\ahu@bibliographyparsep}{0pt}
\newcommand{\ahu@bibliographytopsep}{0pt}
\newcommand{\ahu@clubpenaltyvalue}{4000}
\newcommand{\ahu@widowpenaltyvalue}{4000}
\newcommand{\ahu@headrulewidthvalue}{0pt}
\newcommand{\ahu@footrulewidthvalue}{0pt}
\newcommand{\ahu@contentsnamegap}{2\ccwd}
\newcommand{\ahu@titleinnergap}{2em}
\newcommand{\ahu@simsunfakebold}{2.5}

\geometry{left=\ahu@pageleftmargin,right=\ahu@pagerightmargin,top=\ahu@pagetopmargin,bottom=\ahu@pagebottommargin}
\hypersetup{hidelinks}
\setlength{\parindent}{\ahu@paragraphindent}
\setlength{\parskip}{\ahu@paragraphskip}
\setcounter{secnumdepth}{\ahu@secnumdepthvalue}
\setcounter{tocdepth}{\ahu@tocdepthvalue}
\renewcommand{\thefigure}{\arabic{figure}}
\renewcommand{\thetable}{\arabic{table}}
\renewcommand{\theequation}{\arabic{equation}}

% 优先使用项目内随附字体，保证不同系统下编译结果稳定一致。
\newcommand{\ahu@fontspath}{fonts/}
\newcommand{\ahu@notopath}{/usr/share/fonts/opentype/noto/}
\newcommand{\ahu@fandolpath}{/usr/share/texlive/texmf-dist/fonts/opentype/public/fandol/}

\newcommand{\ahu@choosemainfont}{%
  \IfFontExistsTF{Times New Roman}{%
    \setmainfont{Times New Roman}%
  }{%
    \setmainfont{TeX Gyre Termes}%
  }%
}

\newcommand{\ahu@setupsongti}{%
  \IfFileExists{\ahu@fontspath SourceHanSerifSC-Regular.otf}{%
    \setCJKmainfont[
      Path=\ahu@fontspath,
      BoldFont=SourceHanSerifSC-Bold.otf
    ]{SourceHanSerifSC-Regular.otf}%
    \newCJKfontfamily\ahusongti[
      Path=\ahu@fontspath,
      BoldFont=SourceHanSerifSC-Bold.otf
    ]{SourceHanSerifSC-Regular.otf}%
  }{%
    \IfFontExistsTF{Source Han Serif SC}{%
      \setCJKmainfont{Source Han Serif SC}%
      \newCJKfontfamily\ahusongti{Source Han Serif SC}%
    }{%
      \IfFontExistsTF{Noto Serif CJK SC}{%
        \setCJKmainfont{Noto Serif CJK SC}%
        \newCJKfontfamily\ahusongti{Noto Serif CJK SC}%
      }{%
        \IfFileExists{\ahu@notopath NotoSerifCJK-Regular.ttc}{%
          \setCJKmainfont[
            Path=\ahu@notopath,
            BoldFont=NotoSerifCJK-Bold.ttc
          ]{NotoSerifCJK-Regular.ttc}%
          \newCJKfontfamily\ahusongti[
            Path=\ahu@notopath,
            BoldFont=NotoSerifCJK-Bold.ttc
          ]{NotoSerifCJK-Regular.ttc}%
        }{%
          \ClassWarning{ahuthesis}{未找到随附思源宋体，将回退到 Noto Serif CJK SC 或 FandolSong}%
          \setCJKmainfont{FandolSong}%
          \newCJKfontfamily\ahusongti{FandolSong}%
        }%
      }%
    }%
  }%
}

\newcommand{\ahu@setupheiti}{%
  \IfFileExists{\ahu@fontspath SourceHanSansSC-Regular.otf}{%
    \newCJKfontfamily\ahuheiti[
      Path=\ahu@fontspath,
      BoldFont=SourceHanSansSC-Bold.otf
    ]{SourceHanSansSC-Regular.otf}%
  }{%
    \IfFontExistsTF{Source Han Sans SC}{%
      \newCJKfontfamily\ahuheiti{Source Han Sans SC}%
    }{%
      \IfFontExistsTF{Noto Sans CJK SC}{%
        \newCJKfontfamily\ahuheiti{Noto Sans CJK SC}%
      }{%
        \IfFileExists{\ahu@notopath NotoSansCJK-Regular.ttc}{%
          \newCJKfontfamily\ahuheiti[
            Path=\ahu@notopath,
            BoldFont=NotoSansCJK-Bold.ttc
          ]{NotoSansCJK-Regular.ttc}%
        }{%
          \newCJKfontfamily\ahuheiti{FandolHei}%
        }%
      }%
    }%
  }%
}

\newcommand{\ahu@setupfangsong}{%
  \IfFileExists{\ahu@fontspath ZhuqueFangsong-Regular.ttf}{%
    \newCJKfontfamily\ahufangsong[
      Path=\ahu@fontspath,
      Extension=.ttf,
      AutoFakeBold=2.0,
      ItalicFont=ZhuqueFangsong-Regular.ttf,
      Script=Default
    ]{ZhuqueFangsong-Regular}%
  }{%
    \IfFontExistsTF{Zhuque Fangsong}{%
      \newCJKfontfamily\ahufangsong{Zhuque Fangsong}%
    }{%
      \IfFontExistsTF{FandolFang}{%
        \newCJKfontfamily\ahufangsong{FandolFang}%
      }{%
        \IfFileExists{\ahu@fandolpath FandolFang-Regular.otf}{%
          \newCJKfontfamily\ahufangsong[
            Path=\ahu@fandolpath,
            BoldFont=FandolFang-Regular.otf
          ]{FandolFang-Regular.otf}%
        }{%
          \newCJKfontfamily\ahufangsong{FandolKai}%
        }%
      }%
    }%
  }%
}

\ahu@choosemainfont
\ahu@setupsongti
\ahu@setupheiti
\ahu@setupfangsong

\newcommand{\ahuroman}{\rmfamily}
\newcommand{\ahubodyfont}{\ahusongti\fontsize{\ahu@bodyfontsize}{\ahu@bodyleading}\selectfont}
\newcommand{\ahutocfont}{\ahusongti\bfseries\fontsize{\ahu@tocfontsize}{\ahu@tocleading}\selectfont}
\newcommand{\ahutitlefont}{\ahusongti\bfseries\fontsize{\ahu@titlefontsize}{\ahu@titleleading}\selectfont}
\newcommand{\ahucoverfieldfont}{\ahusongti\fontsize{\ahu@coverfieldfontsize}{\ahu@coverfieldleading}\selectfont}
\newcommand{\ahucoverlabelfont}{\ahusongti\bfseries\fontsize{\ahu@coverlabelfontsize}{\ahu@coverlabelleading}\selectfont}
\newcommand{\ahucoverhintfont}{\ahuheiti\bfseries\fontsize{\ahu@coverhintfontsize}{\ahu@coverhintleading}\selectfont}
\newcommand{\ahucnabstracttitlefont}{\ahuheiti\bfseries\fontsize{\ahu@cnabstracttitlefontsize}{\ahu@cnabstracttitleleading}\selectfont}
\newcommand{\ahucnabstractheadingfont}{\ahuheiti\bfseries\fontsize{\ahu@cnabstractheadingfontsize}{\ahu@cnabstractheadingleading}\selectfont}
\newcommand{\ahuheifour}{\ahuheiti\bfseries\fontsize{\ahu@heifourfontsize}{\ahu@heifourleading}\selectfont}
\newcommand{\ahuheithree}{\ahuheiti\bfseries\fontsize{\ahu@heithreefontsize}{\ahu@heithreeleading}\selectfont}
\newcommand{\ahufangsongfive}{\ahufangsong\fontsize{\ahu@fangsongfivefontsize}{\ahu@fangsongfiveleading}\selectfont}
\newcommand{\ahutocheadingfont}{\ahuheiti\bfseries\fontsize{\ahu@tocheadingfontsize}{\ahu@tocheadingleading}\selectfont}
\newcommand{\ahuenglishfive}{\ahuroman\fontsize{\ahu@englishfivefontsize}{\ahu@englishfiveleading}\selectfont}
\newcommand{\ahuenglishsmallfour}{\ahuroman\bfseries\fontsize{\ahu@englishsmallfourfontsize}{\ahu@englishsmallfourleading}\selectfont}
\newcommand{\ahuenglishfour}{\ahuroman\bfseries\fontsize{\ahu@englishfourfontsize}{\ahu@englishfourleading}\selectfont}

\AtBeginDocument{\ahubodyfont}
\AtBeginDocument{\let\tableofcontents\ahu@tableofcontents}

\fancypagestyle{ahu}{%
  \fancyhf{}
  \fancyfoot[C]{\ahusongti\fontsize{\ahu@footerfontsize}{\ahu@footerleading}\selectfont\thepage}
  \renewcommand{\headrulewidth}{\ahu@headrulewidthvalue}
  \renewcommand{\footrulewidth}{\ahu@footrulewidthvalue}
}
\pagestyle{empty}

\gdef\ahu@titlecn{}
\gdef\ahu@titlecnlineone{}
\gdef\ahu@titlecnlinetwo{}
\newcommand{\ahu@updatefulltitlecn}{\gdef\ahu@titlecn{\ahu@titlecnlineone\ahu@titlecnlinetwo}}
\newcommand{\ahu@settitlecn}[1]{%
  \gdef\ahu@titlecnlineone{#1}%
  \gdef\ahu@titlecnlinetwo{}%
  \ahu@updatefulltitlecn
}
\def\thesistitlecn{%
  \@ifnextchar1{\ahu@thesistitlecnone}{%
    \@ifnextchar2{\ahu@thesistitlecntwo}{\ahu@settitlecn}%
  }%
}
\def\ahu@thesistitlecnone1#1{%
  \gdef\ahu@titlecnlineone{#1}%
  \ahu@updatefulltitlecn
}
\def\ahu@thesistitlecntwo2#1{%
  \gdef\ahu@titlecnlinetwo{#1}%
  \ahu@updatefulltitlecn
}
\newcommand{\thesistitleen}[1]{\gdef\ahu@titleen{#1}}
\newcommand{\studentname}[1]{\gdef\ahu@studentname{#1}}
\newcommand{\studentid}[1]{\gdef\ahu@studentid{#1}}
\newcommand{\department}[1]{\gdef\ahu@department{#1}}
\newcommand{\major}[1]{\gdef\ahu@major{#1}}
\newcommand{\enrolldate}[1]{\gdef\ahu@enrolldate{#1}}
\newcommand{\supervisor}[1]{\gdef\ahu@supervisor{#1}}
\newcommand{\supervisortitle}[1]{\gdef\ahu@supervisortitle{#1}}
\newcommand{\supervisorunit}[1]{\gdef\ahu@supervisorunit{#1}}
\newcommand{\completiondate}[1]{\gdef\ahu@completiondate{#1}}
\newcommand{\keywordsCN}[1]{\gdef\ahu@keywordsCN{#1}}
\newcommand{\keywordsEN}[1]{\gdef\ahu@keywordsEN{#1}}

\thesistitlecn{基于XeLaTeX的安徽大学理工类本科毕业论文模板}
\thesistitlecn2{}
\thesistitleen{An XeLaTeX Thesis Template for Anhui University Science and Engineering Undergraduates}
\studentname{张三}
\studentid{2022000000}
\department{物理学院}
\major{应用物理}
\enrolldate{2022 年 9 月}
\supervisor{李四}
\supervisortitle{教授 / 博士}
\supervisorunit{安徽大学物理学院}
\completiondate{2026 年 6 月}
\keywordsCN{论文模板；XeLaTeX；中文排版；本科毕业论文}
\keywordsEN{thesis template; xelatex; chinese typesetting; undergraduate thesis}

\newlength{\ahu@coverwidth}
\setlength{\ahu@coverwidth}{\ahu@coverwidthvalue}

\newcommand{\ahu@coverrulebox}[2]{%
  \underline{\makebox[#1][c]{\strut #2}}%
}
\newcommand{\ahu@coversinglefield}[3]{%
  \noindent
  \makebox[\ahu@coverwidth][l]{%
    {\ahucoverlabelfont\makebox[#1][l]{#2}}%
    \ahu@coverrulebox{\dimexpr\ahu@coverwidth-#1\relax}{#3}%
  }\par
}
\newcommand{\ahu@coverdoublefield}[7]{%
  \noindent
  \makebox[\ahu@coverwidth][l]{%
    {\ahucoverlabelfont\makebox[#1][l]{#2}}%
    \ahu@coverrulebox{\dimexpr#3-#1\relax}{#4}%
    {\ahucoverlabelfont\makebox[#5][l]{#6}}%
    \ahu@coverrulebox{\dimexpr\ahu@coverwidth-#3-#5\relax}{#7}%
  }\par
}

\newcommand{\makecover}{%
  \clearpage
  \thispagestyle{empty}%
  \begin{center}
    \vspace*{\ahu@covertopskip}
    {\ahutitlefont 安徽大学\par}
    \vspace{\ahu@covertitlesep}
    {\ahutitlefont 本科毕业论文（设计、创作）\par}
  \end{center}
  \vspace{\ahu@coverblocktopskip}
  \begingroup
  \centering
  {\ahucoverfieldfont
    \begin{minipage}{\ahu@coverwidth}
      \ahu@coversinglefield{\ahu@covercommonlabelwidth}{题\hspace{\ahu@titleinnergap}目：}{\ahu@titlecnlineone}
      \vspace{\ahu@covertitlelinesep}
      \ahu@coversinglefield{\ahu@covercommonlabelwidth}{}{\ahu@titlecnlinetwo}
      \vspace{\ahu@covertitleblocksep}
      \ahu@coverdoublefield{\ahu@covercommonlabelwidth}{学生姓名：}{\ahu@coverstudentnamewidth}{\ahu@studentname}{\ahu@coverstudentidlabelwidth}{学号：}{\ahu@studentid}
      \vspace{\ahu@coverrowsep}
      \ahu@coverdoublefield{\ahu@covercommonlabelwidth}{院（系）：}{\ahu@coverdepartmentwidth}{\ahu@department}{\ahu@covermajorlabelwidth}{专业：}{\ahu@major}
      \vspace{\ahu@coverrowsep}
      \ahu@coversinglefield{\ahu@covercommonlabelwidth}{入学时间：}{\ahu@enrolldate}
      \vspace{\ahu@coverrowsep}
      \ahu@coverdoublefield{\ahu@covercommonlabelwidth}{导师姓名：}{\ahu@coversupervisorwidth}{\ahu@supervisor}{\ahu@coversupervisortitlelabelwidth}{职称/学位：}{\ahu@supervisortitle}
      \vspace{\ahu@coverrowsep}
      \ahu@coversinglefield{\ahu@coverunitlabelwidth}{导师所在单位：}{\ahu@supervisorunit}
      \vspace{\ahu@coverrowsep}
      \ahu@coversinglefield{\ahu@covercommonlabelwidth}{完成时间：}{\ahu@completiondate}
    \end{minipage}\par
  }
  \endgroup
  \clearpage
}

\newcommand{\frontmatter}{%
  \clearpage
  \pagestyle{empty}
  \pagenumbering{gobble}
}

\newcommand{\mainmatter}{%
  \clearpage
  \pagenumbering{arabic}
  \setcounter{page}{1}
  \pagestyle{ahu}
}

\newcommand{\backmatter}{%
  \clearpage
  \pagestyle{ahu}
}

\DeclareCaptionLabelFormat{ahu}{#1#2：}
\DeclareCaptionFont{ahucaption}{\ahusongti\fontsize{\ahu@captionfontsize}{\ahu@captionleading}\selectfont}
\captionsetup{labelsep=none}
\captionsetup[table]{position=top,labelformat=ahu,font=ahucaption,skip=\ahu@captiongap}
\captionsetup[figure]{position=bottom,labelformat=ahu,font=ahucaption,skip=\ahu@captiongap}
\renewcommand{\tablename}{表}
\renewcommand{\figurename}{图}

\titleformat{\section}[block]
  {\ahusongti\bfseries\fontsize{\ahu@headingfontsize}{\ahu@headingleading}\selectfont}
  {\thesection}
  {\ahu@headinglabelsep}
  {}
\titlespacing*{\section}{0pt}{\ahu@headingbeforeskip}{\ahu@headingafterskip}

\titleformat{\subsection}[block]
  {\ahusongti\fontsize{\ahu@headingfontsize}{\ahu@headingleading}\selectfont}
  {\thesubsection}
  {\ahu@headinglabelsep}
  {}
\titlespacing*{\subsection}{0pt}{\ahu@headingbeforeskip}{\ahu@headingafterskip}

\titleformat{\subsubsection}[block]
  {\ahusongti\fontsize{\ahu@headingfontsize}{\ahu@headingleading}\selectfont}
  {\thesubsubsection}
  {\ahu@headinglabelsep}
  {}
\titlespacing*{\subsubsection}{0pt}{\ahu@headingbeforeskip}{\ahu@headingafterskip}

\titleformat{\paragraph}[block]
  {\ahusongti\fontsize{\ahu@headingfontsize}{\ahu@headingleading}\selectfont}
  {\theparagraph}
  {\ahu@headinglabelsep}
  {}
\titlespacing*{\paragraph}{0pt}{\ahu@headingbeforeskip}{\ahu@headingafterskip}

\renewcommand{\cftdotsep}{\ahu@tocdotsepvalue}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsubsubsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsecfont}{\ahutocfont}
\renewcommand{\cftsecpagefont}{\ahutocfont}
\renewcommand{\cftsubsecfont}{\ahutocfont}
\renewcommand{\cftsubsecpagefont}{\ahutocfont}
\renewcommand{\cftsubsubsecfont}{\ahutocfont}
\renewcommand{\cftsubsubsecpagefont}{\ahutocfont}
\renewcommand{\contentsname}{目\hspace{\ahu@contentsnamegap}录}
\renewcommand{\cfttoctitlefont}{\hfill\ahutocheadingfont}
\renewcommand{\cftaftertoctitle}{\hfill}
\setlength{\cftbeforetoctitleskip}{\ahu@tocbeforetitleskip}
\setlength{\cftaftertoctitleskip}{\ahu@tocaftertitleskip}
\setlength{\cftbeforesecskip}{\ahu@tocentryskip}
\setlength{\cftbeforesubsecskip}{\ahu@tocentryskip}
\setlength{\cftbeforesubsubsecskip}{\ahu@tocentryskip}
\setlength{\cftsecindent}{\ahu@tocsecindentvalue}
\renewcommand{\cftsubsecindent}{\ahu@tocsubsecindentvalue}
\setlength{\cftsubsubsecindent}{\ahu@tocsubsubsecindentvalue}
\setlength{\cftsecnumwidth}{\ahu@tocsecnumwidthvalue}
\setlength{\cftsubsecnumwidth}{\ahu@tocsubsecnumwidthvalue}
\setlength{\cftsubsubsecnumwidth}{\ahu@tocsubsubsecnumwidthvalue}

\newcommand{\ahu@tableofcontents}{%
  \clearpage
  \thispagestyle{empty}%
  \begingroup
    \parindent\z@
    \parskip\cftparskip
    \vspace{\cftbeforetoctitleskip}%
    \noindent\makebox[\textwidth][c]{\ahutocheadingfont \contentsname}\par
    \vskip\cftaftertoctitleskip
    \@starttoc{toc}%
  \endgroup
  \clearpage
}

\newcommand{\ahu@bibsection}{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{section}{\ahu@bibliographytitle}
  \noindent\hspace*{\ahu@bibliographytitleindent}{\ahuheifour \ahu@bibliographytitle\par}
  \vspace{\baselineskip}
}

\renewenvironment{thebibliography}[1]{%
  \ahu@bibsection
  \begingroup
  \ahufangsongfive
  \list{\@biblabel{\@arabic\c@enumiv}}%
       {\settowidth\labelwidth{\@biblabel{#1}}%
        \leftmargin\labelwidth
        \advance\leftmargin\labelsep
        \itemsep \ahu@bibliographyitemsep
        \parsep \ahu@bibliographyparsep
        \topsep \ahu@bibliographytopsep
        \usecounter{enumiv}%
        \let\p@enumiv\@empty
        \renewcommand\theenumiv{\@arabic\c@enumiv}}%
  \sloppy
  \clubpenalty\ahu@clubpenaltyvalue
  \widowpenalty\ahu@widowpenaltyvalue
  \sfcode`\.=\@m
}{%
  \def\@noitemerr{\@latex@warning{Empty `thebibliography' environment}}%
  \endlist
  \endgroup
  \clearpage
}

\newenvironment{cnabstract}{%
  \clearpage
  \thispagestyle{empty}%
  \begin{center}
    \vspace*{\ahu@abstracttopskip}
    {\ahucnabstracttitlefont \ahu@titlecn\par}
    \vspace{\ahu@abstracttitlesep}
    {\ahucnabstractheadingfont 摘\hspace{\ahu@titleinnergap}要\par}
  \end{center}
  \vspace{\ahu@abstractbodysep}
  \begingroup
  \ahufangsongfive
}{%
  \par
  \vspace{\baselineskip}
  \noindent\hspace*{\ahu@keywordindent}{\ahusongti\bfseries\fontsize{\ahu@keywordfontsize}{\ahu@keywordleading}\selectfont 关键词：\ahu@keywordsCN\par}
  \endgroup
  \clearpage
}

\newenvironment{enabstract}{%
  \clearpage
  \thispagestyle{empty}%
  \begin{center}
    \vspace*{\ahu@abstracttopskip}
    {\ahuenglishfour \ahu@titleen\par}
    \vspace{\ahu@abstracttitlesep}
    {\ahuenglishfour Abstract\par}
  \end{center}
  \vspace{\ahu@abstractbodysep}
  \begingroup
  \ahuenglishfive
}{%
  \par
  \vspace{\baselineskip}
  \noindent\hspace*{\ahu@keywordindent}{\ahuenglishsmallfour Keywords: \ahu@keywordsEN\par}
  \endgroup
  \clearpage
}

\newenvironment{ahubibliography}[1]{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{section}{主要参考文献}
  \noindent\hspace*{\ahu@bibliographytitleindent}{\ahuheifour 主要参考文献\par}
  \vspace{\baselineskip}
  \begingroup
  \ahufangsongfive
  \list{\@biblabel{\@arabic\c@enumiv}}%
       {\settowidth\labelwidth{\@biblabel{#1}}%
        \leftmargin\labelwidth
        \advance\leftmargin\labelsep
        \itemsep \ahu@bibliographyitemsep
        \parsep \ahu@bibliographyparsep
        \topsep \ahu@bibliographytopsep
        \usecounter{enumiv}%
        \let\p@enumiv\@empty
        \renewcommand\theenumiv{\@arabic\c@enumiv}}%
  \sloppy
  \clubpenalty\ahu@clubpenaltyvalue
  \widowpenalty\ahu@widowpenaltyvalue
  \sfcode`\.=\@m
}{%
  \def\@noitemerr{\@latex@warning{Empty `ahubibliography' environment}}%
  \endlist
  \endgroup
  \clearpage
}

\newcommand{\ahuappendix}[2]{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{section}{附录#1}
  \noindent{\ahuheifour 附录#1\par}
  \vspace{\baselineskip}
  \begin{center}
    {\ahuheifour #2\par}
  \end{center}
  \vspace{\baselineskip}
  \ahubodyfont
}

\newenvironment{acknowledgements}{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{section}{致谢}
  \begin{center}
    {\ahuheifour 致\hspace{\ahu@titleinnergap}谢\par}
  \end{center}
  \vspace{\baselineskip}
  \begingroup
  \ahubodyfont
}{%
  \par
  \endgroup
}

\makeatother
