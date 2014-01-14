
## GIT - Notes
### Alan T. Arnholt

Last compiled:

```
[1] "Tuesday, January 14, 2014 - 13:31:10."
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
the `Create repository` button and your GitHub repository will be created.  
![AlansGitRepo](./images/CreateGitRepo.png)


This document is stored in the repository [https://github.com/alanarnholt/SEMINAR](https://github.com/alanarnholt/SEMINAR) in the folder [https://github.com/alanarnholt/SEMINAR/tree/master/Alan/summaries/GITstuff](https://github.com/alanarnholt/SEMINAR/tree/master/Alan/summaries/GITstuff). 

## Local Repositories

It is possible to set up a local repository using GUI (drop, drag, etc.) commands or to
use the command line.  I keep my repositories in a folder called *git_repositories* that
is a subfolder of my *USERNAME* directory.  Once you have a local folder with files you
would like to place under version control, use the `git init` command from your working
directory to track your files.  If you clone a remote repository to your machine, you 
will not need to initialize your directory.  One way to clone this repo using `RStudio` is 
to click on File -> New Project 

![NewProject](./images/NewProject.png)

Click Version Control and a new window such as the one below will appear where you will select Git.

![VersionControl](./images/VersionControl.png)

In the next window that will appear, shown below you will need to enter the URL for the repository you are cloning.  Enter a project name and specify where you want the project to reside on your computer.  When you are finished, click the Create Project button and you will have cloned a remote repository.

![ProjectVersionControl](./images/ProjectVersionControl.png)


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
#	modified:   GIT_LAB1.Rmd
#
no changes added to commit (use "git add" and/or "git commit -a")
```

The `git status` shows us what files are not staged for a commit.  Before files can be
committed, they must be added to the staging area.  Files are added to the stating area
with the command `git add file_name`.  To add all files in the working directory, one
can use `git add .`  Next all files are added to the staging area and a snapshot is 
taken of the commit with the message "staging all files".

```bash
git add .
git commit  -m "staging all files"
```

```
[master eab384d] staging all files
 1 file changed, 1 insertion(+), 1 deletion(-)
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
commit eab384d91f357bbd9a358ef0009c940bc4fa30e5
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Tue Jan 14 13:31:10 2014 -0500

    staging all files

commit 2d646580ab8d1ad80e59166d5e23454a70c6d011
Author: Erin Kreiling <ekreiling1@Erins-MacBook-Pro.local>
Date:   Mon Jan 13 16:55:33 2014 -0500

    add name

commit 2cd35bdfddfc18a47c8203d86cecab0f911738e2
Author: Erin Kreiling <ekreiling1@Erins-MacBook-Pro.local>
Date:   Mon Jan 13 16:53:24 2014 -0500

    Added title/name and several more variables.
```


That was ugly. Let us try some formatting.


```bash
git log --pretty=oneline -3
```

```
eab384d91f357bbd9a358ef0009c940bc4fa30e5 staging all files
2d646580ab8d1ad80e59166d5e23454a70c6d011 add name
2cd35bdfddfc18a47c8203d86cecab0f911738e2 Added title/name and several more variables.
```


The previous output was to brief for my likes.  Let us try some further formatting.


```bash
git log --pretty=format:"%h %ad- %s [%an]" -3
```

```
eab384d Tue Jan 14 13:31:10 2014 -0500- staging all files [Alan Arnholt]
2d64658 Mon Jan 13 16:55:33 2014 -0500- add name [Erin Kreiling]
2cd35bd Mon Jan 13 16:53:24 2014 -0500- Added title/name and several more variables. [Erin Kreiling]
```


Maybe even some statistics?


```bash
git log --pretty=format:"%h %ad- %s [%an]" -3 --stat
```

```
eab384d Tue Jan 14 13:31:10 2014 -0500- staging all files [Alan Arnholt]
 Alan/summaries/GITstuff/GIT_LAB1.Rmd | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

2d64658 Mon Jan 13 16:55:33 2014 -0500- add name [Erin Kreiling]
 Erin/summaries/Chapter1.Rmd               |   1 +
 Erin/summaries/Chapter1.html              | 228 ++++++++++++++++++++++++++++++
 Erin/summaries/Chapter1.md                |  56 ++++++++
 Erin/summaries/figure/unnamed-chunk-2.png | Bin 0 -> 18372 bytes
 4 files changed, 285 insertions(+)

2cd35bd Mon Jan 13 16:53:24 2014 -0500- Added title/name and several more variables. [Erin Kreiling]
 Erin/summaries/Chapter1.Rmd | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)
```


Now, just to show how cool this is, we will mix in a little `R`.


```r
library(ggplot2)
ggplot(data = CO2, aes(x = Type, y = uptake)) + geom_boxplot()
```

<img src="figure/Rgraph.png" title="plot of chunk Rgraph" alt="plot of chunk Rgraph" style="display: block; margin: auto;" />

