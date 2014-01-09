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
commit d839e6e2cd24844df2cacc8efa8be946768fa3ef
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 14:05:05 2014 -0500

    staging all files

commit 97e8077b9e8488275e41155713c2b742d55c43f9
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 14:02:48 2014 -0500

    staging all files

commit dcef7437312d81895ddff08af2021424f0cfae20
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 14:02:33 2014 -0500

    staging all files
```


Now, just to show how cool this is, we will mix in a little `R`.


```r
library(ggplot2)
ggplot(data = CO2, aes(x = Type, y = uptake)) + geom_boxplot()
```

<img src="figure/unnamed-chunk-1.pdf" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

