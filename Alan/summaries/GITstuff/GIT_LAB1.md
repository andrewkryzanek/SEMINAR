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
#   (use "git add/rm <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	deleted:    ../GIT_LAB1.Rmd
#	deleted:    ../GIT_LAB1.html
#	deleted:    ../GIT_LAB1.md
#	deleted:    ../GIT_LAB1.pdf
#	deleted:    ../RmakeFile.R
#	deleted:    ../figure/unnamed-chunk-1.pdf
#	deleted:    ../figure/unnamed-chunk-1.png
#	deleted:    ../figure/unnamed-chunk-2.png
#
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#	./
no changes added to commit (use "git add" and/or "git commit -a")
```


Next all files are added to the staging area and a snapshot is taken of the commit with the message "staging all files".

```bash
git add .
git commit  -m "staging all files"
```

```
[master 55a8311] staging all files
 2 files changed, 63 insertions(+)
 create mode 100644 Alan/summaries/GITstuff/GIT_LAB1.Rmd
 create mode 100644 Alan/summaries/GITstuff/RmakeFile.R
```


Check the status after the last commit.

```bash
git status
```

```
# On branch master
# Your branch is ahead of 'origin/master' by 1 commit.
#
# Changes not staged for commit:
#   (use "git add/rm <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	deleted:    ../GIT_LAB1.Rmd
#	deleted:    ../GIT_LAB1.html
#	deleted:    ../GIT_LAB1.md
#	deleted:    ../GIT_LAB1.pdf
#	deleted:    ../RmakeFile.R
#	deleted:    ../figure/unnamed-chunk-1.pdf
#	deleted:    ../figure/unnamed-chunk-1.png
#	deleted:    ../figure/unnamed-chunk-2.png
#
no changes added to commit (use "git add" and/or "git commit -a")
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
# Changes not staged for commit:
#   (use "git add/rm <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	deleted:    ../GIT_LAB1.Rmd
#	deleted:    ../GIT_LAB1.html
#	deleted:    ../GIT_LAB1.md
#	deleted:    ../GIT_LAB1.pdf
#	deleted:    ../RmakeFile.R
#	deleted:    ../figure/unnamed-chunk-1.pdf
#	deleted:    ../figure/unnamed-chunk-1.png
#	deleted:    ../figure/unnamed-chunk-2.png
#
no changes added to commit (use "git add" and/or "git commit -a")
```

Show the last three commits with

```bash
git log  -3
```

```
commit 55a831183274b49e4c3f1ea95aa8c4868b020192
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 14:34:02 2014 -0500

    staging all files

commit 3949d1b8e1fac035086b4c4029087da3da88b392
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 14:31:32 2014 -0500

    staging all files

commit 977cb5b3c3a381bdef0cef63599fcbd535116302
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 14:09:08 2014 -0500

    staging all files
```


Now, just to show how cool this is, we will mix in a little `R`.


```r
library(ggplot2)
ggplot(data = CO2, aes(x = Type, y = uptake)) + geom_boxplot()
```

<img src="figure/unnamed-chunk-1.pdf" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

