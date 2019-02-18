# Notes about arXiv's TeXLive Version

_Update 2017-02-09: arXiv updated to TeXLive 2016_ arXiv is now running under [TeXLive 2016](http://tug.org/texlive), with a new, updated and enhanced tree of local addons and support for newer font sets, and everything else contained within the standard distribution. As with previous updates, most of the TL2009/TL2011 advice below still applies.

The new tree is based on the official TeX Live 2016 release with an updated tree of local addons. While most documents developed under TeX Live 2011 will process fine under the new TeX tree we encourage authors to switch their development environments to the latest TeX Live 2016 (if you have not done so already).

Addons: Many modules not included in the core TeX Live release and maintained in our local tree have been updated to the most recent version \[so long as the update does not drastically change or break existing documents\]. Modules with little or no recent usage have been dropped from our local tree.

Please contact us if there are modules not include in TeX Live 2016 or our locally maintained tree that you would like to see added. In most cases you will want to add customized packages to your submission. Widely used packages may be added to our local tree for the convenience of large disciplines.

* * *

\---

**More on package update policies:** arXiv accepts thousands of articles every month. Our goal is to provide a stable TeX processing system where we are able to reprocess papers from TeX source at any point in the future. arXiv maintains all past TeX trees such that existing papers are processed using the TeX tree in effect when the paper was originally submitted. This preserves the original presentation (look-and-feel) of the paper.

This forces arXiv to limit updates to our TeX tree once we move it into production since thousands of papers depend on the stability of the current tree. Introducing package updates that change existing papers is not acceptable. Therefore, once in production, we do not update the TL release via the tlmgr command. Special exceptions are made in narrow well defined cases for bug fixes that are critical to a large community of authors. During the development process the update processed introduced bugs and broke existing papers more than once so we are extremely cautious when it comes to updates.

TeX Live Packages: Updating commonly used packages in the main TL2016 distribution is time consuming since we need to guarantee that existing papers are not adversly impacted by such a change. New packages: Adding new packages not included in TeX Live is possible by adding the package to our local tree. Updating existing packages in the distribution or local tree is difficult. Options for updating existing packages. One option is to include the modified package with your submission. Another option, for packages expected to be used by many authors, is to provide a modified version (that does not conflict with existing packages) that may be added to our local tree. If you see the need to include a large package hierarchy with you submission please contact us before including significant portions of a TeX Live tree.

Our goal is to update our TeX Live distribution every few years. Since we maintain all previous trees the overhead of frequent updates is significant. This schedule will depend on the frequency of updates to TeX Live and the demand for these updates for arXiv submissions.

* * *

\---

We realize this is a major upgrade from TeX Live 2011 to 2016. The new tree contains thousands of improvements and bug fixes over the previous tree. Users may choose to replace older documents where such updates will improve the rendering of documents impacted by bugs in the previous TL2011-based tree.

_If you are replacing a paper with older TeX source that rendered fine under the previous release we strongly encourage you to carefully examine your final PDF._

TeX Live changes that may impact some arXiv users:

1.  **psfig**: use of psfig to include figures.
    
    The psfig license is 'non-free' which is incompatible with the inclusion policies of the TeX Live organization and as such all support for psfig has been removed from the TeX Live 2016 release.
    
    From [psfig's CTAN page](https://www.ctan.org/pkg/psfig):
    
    _The psfig package is largely superseded, for various reasons, including its non-free licence. For new work, users are strongly encouraged to use the LATEX graphics bundle, specifically, either the graphicx or even epsfig package. In particular, epsfig, which is always to be found in modern distributions, implements a close analogue of the syntax of psfig._
    
    fix: update to modern graphics package for including figures. The TeX community recommends using the \\_includegraphics_ directive from the _graphicx_ package which is part of latex-graphics - _The LATEX standard graphics_ bundle.
    

Issues currently under investigation:

These issues currently involve packages from the main TL2016 distribution.

1.  tikz: figures with equations do not render properly with _LaTex_ yet the same TeX source renders fine with _pdfLaTex_.
    
    We are working with TeX community to learn more about this issue.
    
2.  pdfpages/lscape/revtex4: unwanted page rotation This rotation problem was originally attributed to pdfpages but has since been attributed to a conflict between lscape and revtex. Recent versions of pdfpages now use lscape such that some of our users are experiencing unwanted page rotations.
    
    We are working to resolve this issue with the package maintainers.
    
    fix: include older _pre-lscape_ version of pdfpages with submission.
    
3.  cleveref: unresolved citations leave ?? (Ex. 'Eq. (??)') in paper instead of citation number.
    
    **2017-04-25 Update:**
    
    **Summary:** The problem of unresolved citations is due to the load order of the cleveref and hyperref packages. The hyperref package must be loaded prior to loading cleveref package. arXiv automatically includes the hyperref package when it sees the \\documentclass \\begin{document} directives. This results in the hyperref module getting loaded after cleveref module and since both modules redefine low level macros hyperref ends up redefining the ones cleveref defined earlier. In the past if the user attempted to load the hyperref package they would see option clash errors. These issues often resulted in authors disabling the automatic hyperref inclusion.
    
    **Solution:** Our TeX processing module has been modified to include the hyperref package before the cleveref package. This enforces the load order dependency and eliminates unresolved citations. The code has also been modified to recognize user included hyperref inclusion to eliminate options conflicts.
    
    Original fix: add _\\usepackage{hyperref} before cleveref._
    
    _\\usepackage{hyperref}
    \\usepackage{cleveref}_ 
    
    _Note: You no longer need to explicitly include hyperref package as our code now does this automatically \[before cleveref package\].
    
    Old fix: include 00README.XXX file with nohypertex directive.
    
    In the event conflicts are due to system packages included in your paper you may still need to turn off our hyperref inclusion.
    
    _

_

An incomplete list of common symptoms, errors, and fixes follows:

1.  Wrong biblatex format version
    
    If you have been developing with an older biblatex you will need to regenerate your .bbl file.
    
    Package biblatex Warning: File 'Constraints.bbl' is wrong format version - expected 2.7.
    
    fix: the author needs to regenerate their .bbl file.
    
2.  TikZ and PGF graphics packages.
    
    Reports from users indicate there are problems with these packages in our older TeX Live 2011 system. We observed improvements to graphics in some TeX Live 2011 submissions that were processed under the new TeX Live 2016 tree.
    
    Users who experienced issues with these packages may wish to replace their documents in order to take advantage of the latest enhancements and bug fixes for these packages.
    
    fix: replace document to reprocess with latest versions of these packages.
    

MORE COMING SOON

_Update 2011-12-06: arXiv switched to [texlive 2011](http://tug.org/texlive/) with a new, updated and enhanced tree of local addons. Most of the advice below still applies._

As of 31 December 2009 arXiv is running [texlive 2009](http://tug.org/texlive/) with a new, updated and enhanced tree of local addons, for processing all new submissions and replacements. This represents a significant improvement over the aging teTeX system but will likely be slightly disruptive initially. Submitters may have to change some of their (bad) habits, and possibly adjust some TeX sources.

The good news is that the arXiv installation has been kept very close to the official texlive-2009 system with very few local customizations and modifications. Texlive is one of the current comprehensive mainstream tex systems available for most platforms (and as live DVD). Therefore authors with up to date TeX system should encounter fewer surprises and problems

An incomplete list of common symptoms, errors, and fixes follows:

1.  [natbib](http://www.ctan.org/tex-archive/macros/latex/contrib/natbib/) was updated to version 8.31 \[2009/07/16 8.31 (PWD, AO)\]. There are some incompatibilities with previous version of natbib (arXiv's previous version was 7.1 \[2003/06/06 7.1 (PWD)\]. We recommend to adjust sources to use the current version of natbib. If all else fails, bundle your version of natbib.sty with your submission.
    
    The typical symptoms are
    
    ! Package natbib Error: Bibliography not compatible with author-year
    citations.
    
    (natbib)                Press <return> to continue in numerical citation
        style.
    
    See the natbib package documentation for explanation.
    Type  H <return>  for immediate help.
     ...
    
    l.125 ...and\\NAT@force@numbers{}\\NAT@force@numbers
    
    ?
    ! Emergency stop.
    
    fix: The submission must be made compatible with natbib version 8.31
    
2.  aa.cls (6.1) and natbib.sty (8.3x collide). The symptoms are:
    
    ! LaTeX Error: Command \\bibfont already defined.
                   Or name \\end... illegal, see p.192 of the manual.
    
    See the LaTeX manual or LaTeX Companion for explanation.
    Type  H <return>  for immediate help.
     ...
    
    l.15 \\begin{document}
    
    fix: do not include your own copy of aa.cls (v6.1). arXiv has a patched version which avoids the above problem.
    
3.  Bad size declared in binary blocks of PostScript files ( %%BeginBinary: .... count ). Symptoms:
    
    dvips: ! premature end of file in binary section
    
    dvips:  expected to see %%EndBinary at end of data; struggling on
    dvips: ! premature end of file in binary section
    
    fix: figure must be corrected
    

_
