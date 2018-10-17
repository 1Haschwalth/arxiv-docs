ToBeDone

ToBeDone
========

(this page under construction)

There are still known bugs and enhancements needed in the above dvi previewers.

*   Neither handles hot text with intervening line/page breaks properly (though this never happened in any of the automated examples, since the hot text is typically quite short, e.g. equation, ref, or section number.)
*   neither xhdvi nor TeXview allows a full set of in-lines as in www, e.g. .gif, .jpg, .xbm, ...).
*   TeXview needs to maintain a full history of followed links (so that one can backtrack arbitrarily, not just one back as currently),
*   and also needs some way of examining links before following them (as in www clients).
*   xhdvi needs to implement multiple windows -- at the moment it is necessary to spawn multiple copies of the app (just as multiple copies of xv are spawned under X, here at least the virtual memory used is only 1/10 the size)
*   relative url's remain a problem for both clients (see www page) until the "[WWW consortium](http://info.cern.ch/hypertext/WWW/Organization/Consortium/W3OSignature.html)" imposes a standard for the next generation of www clients to give us more sophisticated in/out messaging to the html transport object (as separated from the html viewing capability).