
## Git - Notes
### Alan T. Arnholt





Last compiled Monday, January 27, 2014 - 06:43:32..

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


If you do not want to type your username and password every time you work with a remote server, you will to install the credential helper.  See the article [Set Up Git](https://help.github.com/articles/set-up-git#platform-all) for additional details on setting up the credential helper.



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

In the next window that appears, which is shown below, enter the URL for the repository you are cloning.  Enter a project name and specify where you want the project to reside on your computer.  When you are finished, click the `Create Project` button and you will have cloned a remote repository.

![ProjectVersionControl](./images/ProjectVersionControl.png)


To check the current status of your repository type:

```bash
git status
```

```
# On branch master
# Your branch is ahead of 'origin/master' by 1 commit.
#   (use "git push" to publish your local commits)
#
# Changes not staged for commit:
#   (use "git add/rm <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	modified:   ../../../.Rproj.user/D1DD7234/sdb/s-76E32973/35FF3F65
#	deleted:    ../../../.Rproj.user/D1DD7234/sdb/s-76E32973/76BD1E65
#	modified:   GIT_LAB1.md
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
[master c767548] staging all files
 1 file changed, 232 insertions(+)
```


Check the status after the last commit.

```bash
git status
```

```
# On branch master
# Your branch is ahead of 'origin/master' by 2 commits.
#   (use "git push" to publish your local commits)
#
# Changes not staged for commit:
#   (use "git add/rm <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	modified:   ../../../.Rproj.user/D1DD7234/sdb/s-76E32973/35FF3F65
#	deleted:    ../../../.Rproj.user/D1DD7234/sdb/s-76E32973/76BD1E65
#
no changes added to commit (use "git add" and/or "git commit -a")
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
# Your branch is ahead of 'origin/master' by 2 commits.
#   (use "git push" to publish your local commits)
#
# Changes not staged for commit:
#   (use "git add/rm <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	modified:   ../../../.Rproj.user/D1DD7234/sdb/s-76E32973/35FF3F65
#	deleted:    ../../../.Rproj.user/D1DD7234/sdb/s-76E32973/76BD1E65
#
no changes added to commit (use "git add" and/or "git commit -a")
```

Show the last three commits with

```bash
git log  -3
```

```
commit c767548f18cddfb58eacd39fc44c8fc7635c7bc2
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Mon Jan 27 06:43:32 2014 -0500

    staging all files

commit 9508c227d848b504e54d499194d2dff6c07826ae
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Mon Jan 27 06:43:12 2014 -0500

    staging all files

commit e9e7dfb87cccf9ab549efaf3cee27bbff2493ab5
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Mon Jan 27 06:40:44 2014 -0500

    misc changes
```


That was ugly. Let us try some formatting.


```bash
git log --pretty=oneline -3
```

```
c767548f18cddfb58eacd39fc44c8fc7635c7bc2 staging all files
9508c227d848b504e54d499194d2dff6c07826ae staging all files
e9e7dfb87cccf9ab549efaf3cee27bbff2493ab5 misc changes
```


The previous output was to brief for my likes.  Let us try some further formatting.


```bash
git log --pretty=format:"%h %ad- %s [%an]" -3
```

```
c767548 Mon Jan 27 06:43:32 2014 -0500- staging all files [Alan Arnholt]
9508c22 Mon Jan 27 06:43:12 2014 -0500- staging all files [Alan Arnholt]
e9e7dfb Mon Jan 27 06:40:44 2014 -0500- misc changes [Alan Arnholt]
```


Maybe even some statistics?


```bash
git log --pretty=format:"%h %ad- %s [%an]" -3 --stat
```

```
c767548 Mon Jan 27 06:43:32 2014 -0500- staging all files [Alan Arnholt]
 Alan/summaries/GITstuff/GIT_LAB1.md | 232 ++++++++++++++++++++++++++++++++++++
 1 file changed, 232 insertions(+)

9508c22 Mon Jan 27 06:43:12 2014 -0500- staging all files [Alan Arnholt]
 Alan/summaries/GITstuff/GIT_LAB1.Rmd |   6 +-
 Alan/summaries/GITstuff/GIT_LAB1.md  | 202 -----------------------------------
 2 files changed, 4 insertions(+), 204 deletions(-)

e9e7dfb Mon Jan 27 06:40:44 2014 -0500- misc changes [Alan Arnholt]
 .DS_Store                                       | Bin 0 -> 6148 bytes
 .Rproj.user/D1DD7234/pcs/files-pane.pper        |   9 +++++++++
 .Rproj.user/D1DD7234/pcs/source-pane.pper       |   3 +++
 .Rproj.user/D1DD7234/pcs/windowlayoutstate.pper |  14 ++++++++++++++
 .Rproj.user/D1DD7234/pcs/workbench-pane.pper    |   4 ++++
 .Rproj.user/D1DD7234/sdb/prop/23527DEE          |   2 ++
 .Rproj.user/D1DD7234/sdb/prop/32572516          |   2 ++
 .Rproj.user/D1DD7234/sdb/prop/65B23338          |   2 ++
 .Rproj.user/D1DD7234/sdb/prop/FCF6B578          |   2 ++
 .Rproj.user/D1DD7234/sdb/prop/INDEX             |   4 ++++
 .Rproj.user/D1DD7234/sdb/s-76E32973/11DE46BF    |  16 ++++++++++++++++
 .Rproj.user/D1DD7234/sdb/s-76E32973/35FF3F65    |  16 ++++++++++++++++
 .Rproj.user/D1DD7234/sdb/s-76E32973/76BD1E65    |  16 ++++++++++++++++
 .Rproj.user/D1DD7234/sdb/s-76E32973/9E4283DE    |  16 ++++++++++++++++
 .Rproj.user/D1DD7234/sdb/s-76E32973/lock_file   |   0
 Alan/summaries/GITstuff/GIT_LAB1.pdf            | Bin 0 -> 307054 bytes
 16 files changed, 106 insertions(+)
```


Now, just to show how cool this is, we will mix in a little `R`.


```r
library(ggplot2)
ggplot(data = CO2, aes(x = Type, y = uptake)) + geom_boxplot()
```

<img src="figure/Rgraph.png" title="plot of chunk Rgraph" alt="plot of chunk Rgraph" style="display: block; margin: auto;" />

