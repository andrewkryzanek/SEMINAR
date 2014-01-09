
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
commit d03122a5abf425c01bd07c3c971c4d8a1f79e087
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 13:31:17 2014 -0500

    add files

commit 575be5d009eee52356ef1f917c8d3a00f143e5e2
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 13:22:22 2014 -0500

    staging all files

commit 9eca61bfbe5c54a8116deea8b19c1086eb906542
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 13:21:43 2014 -0500

    staging all files
```


Now, just to show how cool this is, we will mix in a little `R`.


```r
library(ggplot2)
ggplot(data = CO2, aes(x = Type, y = uptake)) + geom_boxplot()
```

<img src="figure/unnamed-chunk-1.png" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

