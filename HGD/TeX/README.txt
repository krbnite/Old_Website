
GOALS
(1) This makes for a great UNIX application (no need to make it IDL dependent
when I can make it in UNIX and have a simple wrapper in IDL). 

(2) As a UNIX application (not in IDL or other environment), it would be nice
to have work as a read-only VIM file (other users will be able to contribute
to the GitHub files in the ordinary way). I would like it in the VIM
environment in order to borrow the motion commands and the hyperlinking of
help files. 

(3) That said, I've been writing the files as LaTex .tex files because I want 
the equations to look good. So a question is: is there a UNIX program that
allows you to print LaTex files to the Terminal screen looking pretty decent?
Possibilities:
asciiTex -- "ascii equation art"
Hevea -- LaTex 2 HTML translator
LaTex2Html -- LaTex 2 HTML translator
latex2rtf -- converts LaTex to rich text format


ASCIITEX
Unfortunately you cannot simply just run a TeX file through AsciiTex
and output what you think you want... In fact, AsciiTex does not even
understand the $Math$ or \begin{MathEnv} syntax. AsciiTex just wants you to
have the equation written in LaTex by itself in a file, for example, and it
will give you back some Ascii representation of it.

So, how to do it then, is to either write a script that re-does my TeX files
for quick on-screen UNIX printing, or to just write txt file and add the Ascii
equation art as I go. The first option will take more time and thinking, but
it leaves me with TeX files that I can make into a PDF, or use a LaTeX2HTML
translator on... So, it sounds like the better deal in the long run.

FURTHER WARNING: it does not perform as well as you might hope. For example,
it does not seem to process Greek symbols; instead \omega reads out as "omega"
-- bummer.

*******
Hmmm.... So maybe I can make a local HTML directory and use something
like W3M. This would actually solve my VIM-like environment desire too!

HEVEA worked like a fucking charm!!!!!!!
I am viewing my ionospheric-radio-absorption.html in Chrome right now; it's
amazing! :-p
* I mean, my equations need some work to look more readable, but it's cool.
* need to embolden titles and section heads, etc
* need to use line breaks

W3M can *almost* resolve the math equations, but unfortunately, some of it
gets pretty garbled up. (Some of it looks cool though! It does much better
Ascii Art than AsciiTex did.)






