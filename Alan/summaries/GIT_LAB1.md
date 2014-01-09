## Trying to ``git'' a clue


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
#	modified:   GIT_LAB1.html
#	modified:   GIT_LAB1.md
#	modified:   GIT_LAB1.pdf
#	modified:   figure/unnamed-chunk-1.pdf
#
no changes added to commit (use "git add" and/or "git commit -a")
```


Next all files are added to the staging area and a snapshot is taken of the commit with the message "staging all files".

```bash
git add .
git commit  -m "staging all files"
```

```
[master f71c01b] staging all files
 4 files changed, 250 insertions(+), 293 deletions(-)
 rewrite Alan/summaries/GIT_LAB1.html (72%)
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
commit f71c01b9e428748a90a67b630d7370eed1db1ead
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 14:01:46 2014 -0500

    staging all files

commit 0cec9f9988dd9504ec4f7dd04fbbe37aea9d3e4d
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 14:00:42 2014 -0500

    staging all files

commit 3a7e0e5b23da5240c859f95855b9f043e1aac281
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 14:00:27 2014 -0500

    staging all files
```


Now, just to show how cool this is, we will mix in a little `R`.


```r
library(ggplot2)
ggplot(data = CO2, aes(x = Type, y = uptake)) + geom_boxplot()
```

<img src="figure/unnamed-chunk-1.pdf" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

