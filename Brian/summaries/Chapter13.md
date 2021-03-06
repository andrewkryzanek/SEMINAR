Chapter 13 Presenting on the Web with Markdown
===========================================

The Markdown language was created as a simplified way of writing HTML documents. Markdown, when integrated with *knitr*, is a quick and simple way for creating HTML presentation documents. Like for Latex, RStudio is a very good editor for R Markdown documents.

## Basic Syntax

Unlike a Latex documents, RMarkdown does not require either a preamble or a body environment. To create a header, we can use the hash mark (\#) at the beginning of the header line. There are six levels of header, so the first level gets one hash mark (\#), the second gets two (\#\#), and so on. We can also create level one headers by following a line of text with equal (=) signs and level two by following a line of text with dashes (-):

`Level One`   
`=========`

`Level Two`  
`---------`

Horizontal lines that run the width of the page can be created by placing three or more equal (=) signs or dashes separated by text from above by one blank line:

`Horizontal lines`

`==========`

To *italicize* a word, place it between two asterisks (`*`) and to make words **bold**, place them between four asterisks. Markdown uses a backslash(\) as an escape character.

To typeset math equations in Markdown we use similar techniques as in Latex. For example, use a pair of dollar signs (\$) to enclose an inline math equation and use `\[ \]` for a display-style equation.

## Slideshows with Markdown and HTML

The easiest way to create an HTML slideshows is with the use of RStudio's R Presentation documents. To create a new file, go to `File` $\rightarrow$ `New` $\rightarrow$ `R Presentation`. The syntax for creating slides is quite simple.  The slide title is followed by three equal signs (===); this also indicates a new slide is added. The very first slide is automatically the title slide and will be formatted differently from the rest. 

Another way to create HTML slideshows is to use the *slidify* package.  This package converts R Markdown files into HTML slideshows. 
