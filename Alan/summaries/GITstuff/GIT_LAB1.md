## Trying to ``git'' a Clue


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
#
no changes added to commit (use "git add" and/or "git commit -a")
```


Next all files are added to the staging area and a snapshot is taken of the commit with the message "staging all files".

```bash
git add .
git commit  -m "staging all files"
```

```
[master e2e844b] staging all files
 2 files changed, 18 insertions(+), 16 deletions(-)
```


Check the status after the last commit.

```bash
git status
```

```
# On branch master
# Your branch is ahead of 'origin/master' by 1 commit.
#   (use "git push" to publish your local commits)
#
nothing to commit, working directory clean
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
nothing to commit, working directory clean
```

Show the last three commits with

```bash
git log  -3
```

```
commit e2e844b8019caeca8233970701ff16c95fe43e96
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 18:55:37 2014 -0500

    staging all files

commit 9e692d9a2a5f3763e88191abd3adecef3ba7656f
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 18:55:02 2014 -0500

    staging all files

commit 8d2409b586fabaa6fa0bfa5d68c2b34e56efc145
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 18:54:49 2014 -0500

    staging all files
```


Now, just to show how cool this is, we will mix in a little `R`.


```r
library(ggplot2)
ggplot(data = CO2, aes(x = Type, y = uptake)) + geom_boxplot()
```

<img src="figure/unnamed-chunk-1.pdf" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

