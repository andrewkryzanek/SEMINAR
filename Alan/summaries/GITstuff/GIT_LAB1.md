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
nothing to commit (working directory clean)
```


Next all files are added to the staging area and a snapshot is taken of the commit with the message "staging all files".

```bash
git add .
git commit  -m "staging all files"
```

```
# On branch master
nothing to commit (working directory clean)
```


Check the status after the last commit.

```bash
git status
```

```
# On branch master
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
commit 07c1788282ff95c59eba2d7effba3bfa1cf71e6f
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 14:43:26 2014 -0500

    change path

commit 32fcfcd27cacd3617841de8350ed7e90cd5713e7
Merge: 9fde576 3d1e3c2
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 14:42:33 2014 -0500

    Merge branch 'master' of https://github.com/alanarnholt/SEMINAR

commit 9fde576f6ee66a0412a44cc790c8a237b6f4c1d1
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 14:42:24 2014 -0500

    remove and reorganize
```


Now, just to show how cool this is, we will mix in a little `R`.


```r
library(ggplot2)
ggplot(data = CO2, aes(x = Type, y = uptake)) + geom_boxplot()
```

<img src="figure/unnamed-chunk-1.pdf" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

