<<<<<<< HEAD
## GIT - Notes
### Alan T. Arnholt
=======
## Trying to ``git'' a Clue
>>>>>>> bddd5f6c204aa8376e00cf2a8ebe12f437c303de

Last compiled:

```
[1] "Friday, January 10, 2014 - 11:19:32."
```


Download and install the lastest version of [Git.](http://git-scm.com/downloads)






If you have never used git before, you need to do some setup first.  Run the following
commands so that git knows your name and email.  The commands are all issued in the
Terminal (MAC) or at the command prompt (Windows).  The Terminal application is 
usually found in `/applications/Utilities`.  To open a command prompt, click on the 
Windows icon -> All Programs -> Accessories -> Command Prompt.  The third line adds 
pretty command line colors.  



```bash
git config --global user.name "Your Name"
git config --global user.email "your_email@whatever.com"
git config --global color.ui true
```


If you do not want to type your username and password every time you work with a remote server, you will to install the credential helper.

### Creating a GitHub Account

Point your browser to [https://github.com](https://github.com),
type a username in the `Pick a username` box (please use `firstlast`, for example my username is `alanarnholt`), enter your email (use your school email) in the `Your email` box, type in your password in the `Create a password` box. Then, click the `Sign up for GitHub` box and you will have a GitHub account.


### Creating a GitHub Repository

In order to push your local work to a remote repository, you will first need to create
the remote repository. Log into your GitHub account, click the `New repository` button,
then give your repository a name and optionally a description.  When you finish, click 
the `Create repository` button and your GitHub repository will be created.  This document is stored in the repository [https://github.com/alanarnholt/SEMINAR](https://github.com/alanarnholt/SEMINAR) in the folder [https://github.com/alanarnholt/SEMINAR/tree/master/Alan/summaries/GITstuff](https://github.com/alanarnholt/SEMINAR/tree/master/Alan/summaries/GITstuff). 


To check the current status of your repository type:

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

The `git status` shows us what files are not staged for a commit.  Before files cna be
committed, they must be added to the staging area.  Files are added to the stating area
with the command `git add file_name`.  To add all files in the working directory, one
can use `git add .`  Next all files are added to the staging area and a snapshot is 
taken of the commit with the message "staging all files".

```bash
git add .
git commit  -m "staging all files"
```

```
[master 80ada2f] staging all files
 2 files changed, 98 insertions(+), 144 deletions(-)
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
commit 80ada2fa355f6cfea3ea417363d6d0906662841f
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Fri Jan 10 11:19:32 2014 -0500

    staging all files

commit c81e3cab3f234e57878e1b0ce3104ec07da63535
Merge: fb4ebcc bddd5f6
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Fri Jan 10 11:18:43 2014 -0500

    new files

commit fb4ebcc32bf623795d6ff95a81443124b7c154ee
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Fri Jan 10 11:12:02 2014 -0500

    add two files
```


Now, just to show how cool this is, we will mix in a little `R`.


```r
library(ggplot2)
ggplot(data = CO2, aes(x = Type, y = uptake)) + geom_boxplot()
```

<img src="figure/Rgraph.png" title="plot of chunk Rgraph" alt="plot of chunk Rgraph" style="display: block; margin: auto;" />

