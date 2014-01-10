## GIT - Notes
### Alan T. Arnholt

Last compiled:

```
[1] "Friday, January 10, 2014 - 10:27:02."
```




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
# Your branch is ahead of 'origin/master' by 4 commits.
#
# Changes not staged for commit:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	modified:   GIT_LAB1.Rmd
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
[master 8fd85f7] staging all files
 3 files changed, 30 insertions(+), 25 deletions(-)
```


Check the status after the last commit.

```bash
git status
```

```
# On branch master
# Your branch is ahead of 'origin/master' by 5 commits.
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
# Your branch is ahead of 'origin/master' by 5 commits.
#
nothing to commit (working directory clean)
```

Show the last three commits with

```bash
git log  -3
```

```
commit 8fd85f7fbc71094b46418fce8997a5a9b649367e
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Fri Jan 10 10:27:03 2014 -0500

    staging all files

commit 2b8c81d787ff5271fb5ea59f605a7c238c035d51
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Fri Jan 10 09:53:28 2014 -0500

    staging all files

commit 5d5333c1f042ffa983f8f062336c8d542a0f0b09
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Fri Jan 10 09:53:10 2014 -0500

    staging all files
```


Now, just to show how cool this is, we will mix in a little `R`.


```r
library(ggplot2)
ggplot(data = CO2, aes(x = Type, y = uptake)) + geom_boxplot()
```

<img src="figure/unnamed-chunk-1.pdf" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

