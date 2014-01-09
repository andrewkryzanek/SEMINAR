## GIT
### Set up GIT

First download and install the lastest version of [Git.](http://git-scm.com/downloads)






If you have never used git before, you need to do some setup first.  Run the following commands so that git knows your name and email.  The third line adds pretty command line colors. 


```bash
git config --global user.name "Your Name"
git config --global user.email "your_email@whatever.com"
git config --global color.ui true
```



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
#	modified:   GIT_LAB1.html
#	modified:   GIT_LAB1.md
#
no changes added to commit (use "git add" and/or "git commit -a")
```



```bash
git add .
git commit  -m "staging all files"
```

```
[master 086385e] staging all files
 3 files changed, 50 insertions(+), 8 deletions(-)
```



```bash
git status
```

```
# On branch master
# Your branch is ahead of 'origin/master' by 1 commit.
#
nothing to commit (working directory clean)
```

Push changes to the remote repository: 

```bash
git push
```



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
commit 086385ef960a1386abcf190cb2edf419938c2e90
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 12:51:44 2014 -0500

    staging all files

commit 4d0c2ae650802fff2c6cf84845f82374cf66e251
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 12:50:31 2014 -0500

    staging all files

commit ea1ba5a7c17bf654078066fd05c4749829e9faf8
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 12:50:10 2014 -0500

    staging all files
```

