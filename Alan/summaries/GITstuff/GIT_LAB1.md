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
nothing to commit, working directory clean
```


Next all files are added to the staging area and a snapshot is taken of the commit with the message "staging all files".

```bash
git add .
git commit  -m "staging all files"
```

```
# On branch master
nothing to commit, working directory clean
```


Check the status after the last commit.

```bash
git status
```

```
# On branch master
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
commit 5dfd2d299768c21cfc2f866ded544cbc2777c2e9
Merge: 3b36608 8f3e438
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 19:20:40 2014 -0500

    Merge branch 'master' of https://github.com/alanarnholt/SEMINAR

commit 3b366081b36b638311ea0552809e8af38a15a4d7
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 19:20:18 2014 -0500

    remove unnamed .png file

commit 8f3e438f873b276dec0269d948a248f5d6d073f0
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 19:19:15 2014 -0500

    Delete unnamed-chunk-1.png
```


Now, just to show how cool this is, we will mix in a little `R`.


```r
library(ggplot2)
ggplot(data = CO2, aes(x = Type, y = uptake)) + geom_boxplot()
```

<img src="figure/Rgraph.png" title="plot of chunk Rgraph" alt="plot of chunk Rgraph" style="display: block; margin: auto;" />

