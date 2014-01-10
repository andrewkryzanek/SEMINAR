## GIT - Notes
### Alan T. Arnholt

Last compiled:

```
[1] "Friday, January 10, 2014 - 10:39:20."
```


Download and install the lastest version of [Git.](http://git-scm.com/downloads)






If you have never used git before, you need to do some setup first.  Run the following
commands so that git knows your name and email.  The third line adds pretty command 
line colors.  The commands are all issued in the Terminal (MAC) or at the command prompt
(Windows).  The Terminal application is usually found in `/applications/Utilities`.
To open a command prompt, click on the Windows icon -> All Programs -> Accessories -> Command Prompt.




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
# Your branch is ahead of 'origin/master' by 7 commits.
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
[master bdf3e2d] staging all files
 3 files changed, 27 insertions(+), 27 deletions(-)
```


Check the status after the last commit.

```bash
git status
```

```
# On branch master
# Your branch is ahead of 'origin/master' by 8 commits.
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
# Your branch is ahead of 'origin/master' by 8 commits.
#
nothing to commit (working directory clean)
```

Show the last three commits with

```bash
git log  -3
```

```
commit bdf3e2d4875b68ac2e386482289b4404df731956
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Fri Jan 10 10:39:20 2014 -0500

    staging all files

commit 2585ccfb25cd1d0e5b3af8784c358c038e14073b
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Fri Jan 10 10:38:45 2014 -0500

    staging all files

commit 0109b392dd09a6d8bafb5789cedc07f93a779ec5
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Fri Jan 10 10:37:58 2014 -0500

    staging all files
```


Now, just to show how cool this is, we will mix in a little `R`.


```r
library(ggplot2)
ggplot(data = CO2, aes(x = Type, y = uptake)) + geom_boxplot()
```

<img src="figure/unnamed-chunk-1.pdf" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

