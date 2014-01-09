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
commit 5dba12a7b2caeb0741decfb95f2d9defa7d621e2
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 17:00:17 2014 -0500

    update

commit c3bdcaa7e4e910ba10ea0b5e4de0396196fe027d
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 16:59:01 2014 -0500

    staging all files

commit bcc82f0c3e7489c160c49c78cc40e2e7ea52bb1f
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 16:57:50 2014 -0500

    staging all files
```


Now, just to show how cool this is, we will mix in a little `R`.


```r
library(ggplot2)
ggplot(data = CO2, aes(x = Type, y = uptake)) + geom_boxplot()
```

<img src="figure/unnamed-chunk-1.pdf" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

