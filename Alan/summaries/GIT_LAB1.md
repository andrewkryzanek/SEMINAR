## GIT

First download and install the lastest version of [Git.](http://git-scm.com/downloads)




If you have never used git before, you need to do some setup first.  Run the following commands so that git knows your name and email.  The third line adds pretty command line colors. 


```bash
git config --global user.name "Your Name"
git config --global user.email "your_email@whatever.com"
git config --global color.ui true
```



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
#	modified:   GIT_LAB1.md
#
no changes added to commit (use "git add" and/or "git commit -a")
```



```bash
git add .
git commit  -m "staging all files"
```

```
[master 82be368] staging all files
 2 files changed, 13 insertions(+), 11 deletions(-)
```



```bash
git status
```

```
# On branch master
# Your branch is ahead of 'origin/master' by 1 commit.
#
nothing to commit (working directory clean)
```

Push changes to the remote repository: 

```bash
git push
```



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
commit 82be368eff5269e4c793135b66ed1df3237b147d
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 12:56:04 2014 -0500

    staging all files

commit 9093a6fa5c3ef3642a61cfe252343a4432698306
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 12:55:54 2014 -0500

    staging all files

commit 086385ef960a1386abcf190cb2edf419938c2e90
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 12:51:44 2014 -0500

    staging all files
```


Now just to show how cool this is, we will mix in a little `R`.


```r
library(ggplot2)
ggplot(data = CO2, aes(x = Type, y = uptake)) + geom_boxplot()
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1.png) 

