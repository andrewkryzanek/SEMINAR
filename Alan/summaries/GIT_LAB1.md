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
[master d1110e5] staging all files
 3 files changed, 139 insertions(+), 5 deletions(-)
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



```bash
git log  -3
```

```
commit d1110e569eff6a8ad8f724408560424bc5cea9a6
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 12:49:54 2014 -0500

    staging all files

commit 777ce3946c0dd546ad4cb6df4271afecd3042a58
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 12:47:30 2014 -0500

    staging all files

commit 09b0060c45bdb6c901e7f83f197818afec0993ea
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 12:46:01 2014 -0500

    staging all files
```

