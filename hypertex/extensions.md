Hypertex Extensions

Some Hypertex Extensions
========================

[idvi](http://www.geom.umn.edu/java/idvi/)
------------------------------------------

This is a java applet which can display pages of a dvi file embedded in an html file. Pages are downloaded on demand from the source. For security reasons, it currently downloads all the fonts from the source and caches them in memory, not on disk. This makes it slow if the network connection is poor. It displays the page as it is being downloaded, however, so on a fast connection it is quite usable. It should run on any platform on which a java browser is available. At the time of this writing (10/96), it is at version 1.0, and may not be very robust on platforms other than sparc-solaris.

It has a few features in addition to the standard hypertex specials. In particular, it implements \`outlining': a scheme to leave parts of the page invisible until the user asks for it by clicking on a relevant link. It can also use colors, and embed other java applets as well as gifs into the dvi file.

It needs no work on the browser end if one is willing to pay the overhead of downloading the applet when a dvi file is to be viewed. At the server end, it needs some work to set up the separate dvi pages at various resolutions and the html document that embeds them.

From the security standpoint, it is as secure as the underlying java implementation. (You make the call.)

For more information, see [http://www.geom.umn.edu/java/idvi/](http://www.geom.umn.edu/java/idvi/).

* * *

[ndvi](http://norma.nikhef.nl/~t16/ndvi_doc.html)
-------------------------------------------------

This is a netscape plug-in for viewing dvi files on those X11 platforms for which plug-in support is available (and if netscape is used). The set of platforms includes SunOS 4.1.3 and higher, HP-UX, IRIX, OSF/1 and Linux. It is currently an alpha release, and displays only the first page of a dvi file embedded in an html document. It will soon be able to display stand-alone dvi files (within a week?). It interprets the standard hypertex (and soon as well the color specials).

It uses the locally available set of pk and vf fonts. In the future, the embedding html file will be able to specify an external URL from which pk files are to be fetched if they are neither available nor can be created locally. When the fonts are available locally, it is very fast. One current drawback is that it waits for the whole dvi file to be downloaded before it displays anything.

The alpha release available at this writing (10/96) is plausible. There are a few small problems with it: the size of the displayed page changes depending on the set of the dpi of the pk fonts available to it, whereas the embedding specifies the fixed height and width as required by netscape. While it underlines URL's, it does not yet display the target when the cursor is placed on the URL (note: may already be fixed). It does not color the URLs that have been visited in a different color. It also crashes or otherwise hangs netscape when it gets into any unexpected situation.

The future plans are to support direct embedding of a TeX file, or even a (presumably plain) TeX equation into an html document. (It will call TeX to convert it to dvi and then display that.)

It needs installation on the user end. The source code is provided under the GNU GPL which allows free redistribution in the source form. Compilation, in addition, requires the netscape plugin developers' kit which is available freely from netscape. Precompiled binaries may run into problems with font paths, but these can be controlled by environment variables set before netscape is invoked.

Someone needs to consider the security implications of this plug-in, especially when it will start calling TeX. Certain things already need to be checked, e.g., whether it calls MakeTeXPK safely.

For further information, see [http://norma.nikhef.nl/~t16/ndvi\_doc.html](http://norma.nikhef.nl/~t16/ndvi_doc.html).