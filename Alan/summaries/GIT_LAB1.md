
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
#	modified:   GIT_LAB1.pdf
#	modified:   RmakeFile.R
#
no changes added to commit (use "git add" and/or "git commit -a")
```


Next all files are added to the staging area and a snapshot is taken of the commit with the message "staging all files".

```bash
git add .
git commit  -m "staging all files"
```

```
[master 058b17b] staging all files
 4 files changed, 259 insertions(+), 290 deletions(-)
 rewrite Alan/summaries/GIT_LAB1.html (87%)
 rewrite Alan/summaries/GIT_LAB1.pdf (97%)
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
commit 058b17bf5b13cf635d2945de3b9c77a4a8af42bf
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 13:45:47 2014 -0500

    staging all files

commit 90ebcdf2e1447e5b248ed1c657b732dce319ecfa
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 13:42:16 2014 -0500

    staging all files

commit 86f2fc679875e6efb6a19a7d18845d2701b5bd8a
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 13:32:30 2014 -0500

    staging all files
```


Now, just to show how cool this is, we will mix in a little `R`.


```r
library(ggplot2)
ggplot(data = CO2, aes(x = Type, y = uptake)) + geom_boxplot()
```

<img src="figure/unnamed-chunk-1.png" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

