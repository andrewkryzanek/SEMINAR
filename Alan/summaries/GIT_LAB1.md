<!--pandoc
format: html
s:
mathjax:
number-sections:

format: latex
number-sections:
-->


## GIT

Download and install the lastest version of [Git.](http://git-scm.com/downloads)




If you have never used git before, you need to do some setup first.  Run the following commands so that git knows your name and email.  The third line adds pretty command line colors. 


```bash
git config --global user.name "Your Name"
git config --global user.email "your_email@whatever.com"
git config --global color.ui true
```


Check the current status of your repository:

```bash
git status
```

```
# On branch master
# Changes not staged for commit:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	modified:   GIT_LAB1.Rmd
#	modified:   GIT_LAB1.html
#	modified:   GIT_LAB1.md
#	modified:   GIT_LAB1.pdf
#
no changes added to commit (use "git add" and/or "git commit -a")
```


Next all files are added to the staging area and a snapshot is taken of the commit with the message "staging all files".

```bash
git add .
git commit  -m "staging all files"
```

```
[master 62b13ea] staging all files
 4 files changed, 40 insertions(+), 27 deletions(-)
```


Check the status after the last commit.

```bash
git status
```

```
# On branch master
# Your branch is ahead of 'origin/master' by 1 commit.
#
nothing to commit (working directory clean)
```

Push changes to the remote repository. 

```bash
git push
```

See if there is anything left to do.

```bash
git status
```

```
# On branch master
nothing to commit (working directory clean)
```

Show the last three commits with

```bash
git log  -3
```

```
commit 62b13eaa15cc08e1103b2cc4303b5544c9fc1cff
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 13:20:55 2014 -0500

    staging all files

commit efa3ce24f1d0b845f2ed4099542d9c5ef8219d25
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 13:17:17 2014 -0500

    staging all files

commit 57da39b2cb5de992d3053608da06b1061b89c817
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 13:13:48 2014 -0500

    staging all files
```


Now, just to show how cool this is, we will mix in a little `R`.


```r
library(ggplot2)
ggplot(data = CO2, aes(x = Type, y = uptake)) + geom_boxplot()
```

<img src="figure/unnamed-chunk-1.pdf" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

