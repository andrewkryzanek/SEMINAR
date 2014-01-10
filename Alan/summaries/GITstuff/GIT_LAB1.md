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
[master 17bcee6] staging all files
 2 files changed, 39 insertions(+), 19 deletions(-)
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
commit 17bcee6f38c128640e76833c0abc094cb5ad1174
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 19:47:19 2014 -0500

    staging all files

commit 6676bb35624353fe0fa05e0a0b444fce13f8c03a
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 19:44:31 2014 -0500

    staging all files

commit 5dfd2d299768c21cfc2f866ded544cbc2777c2e9
Merge: 3b36608 8f3e438
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 19:20:40 2014 -0500

    Merge branch 'master' of https://github.com/alanarnholt/SEMINAR
```


Now, just to show how cool this is, we will mix in a little `R`.


```r
library(ggplot2)
ggplot(data = CO2, aes(x = Type, y = uptake)) + geom_boxplot()
```

<img src="figure/Rgraph.png" title="plot of chunk Rgraph" alt="plot of chunk Rgraph" style="display: block; margin: auto;" />

