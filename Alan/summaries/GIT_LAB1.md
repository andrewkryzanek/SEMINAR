
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
#	modified:   GIT_LAB1.html
#	modified:   GIT_LAB1.md
#	modified:   figure/unnamed-chunk-1.png
#
no changes added to commit (use "git add" and/or "git commit -a")
```


Next all files are added to the staging area and a snapshot is taken of the commit with the message "staging all files".

```bash
git add .
git commit  -m "staging all files"
```

```
[master 49a00e1] staging all files
 3 files changed, 63 insertions(+), 28 deletions(-)
 rewrite Alan/summaries/figure/unnamed-chunk-1.png (92%)
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
commit 49a00e1242f9fef7fa7ca3286e37b39ae7c43ea2
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 13:47:40 2014 -0500

    staging all files

commit ab57c2888824468ae0bf98d3299de22a155a4b76
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 13:47:28 2014 -0500

    staging all files

commit 058b17bf5b13cf635d2945de3b9c77a4a8af42bf
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 13:45:47 2014 -0500

    staging all files
```


Now, just to show how cool this is, we will mix in a little `R`.


```r
library(ggplot2)
ggplot(data = CO2, aes(x = Type, y = uptake)) + geom_boxplot()
```

<img src="figure/unnamed-chunk-1.png" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

