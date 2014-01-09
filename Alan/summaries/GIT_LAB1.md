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
[master 777ce39] staging all files
 3 files changed, 8 insertions(+), 4 deletions(-)
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
git log
```

```
commit 777ce3946c0dd546ad4cb6df4271afecd3042a58
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 12:47:30 2014 -0500

    staging all files

commit 09b0060c45bdb6c901e7f83f197818afec0993ea
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 12:46:01 2014 -0500

    staging all files

commit d717677d747ce2a7e18ccb8ed27c983798b68f6e
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 12:45:29 2014 -0500

    staging all files

commit 72577b3180941524d7b1eaaf1e94955b7cba8eca
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 12:44:51 2014 -0500

    staging all files

commit 81ff7476800463d86a1583642fb7ccb207101e2d
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 12:43:54 2014 -0500

    staging all files

commit fb3dfbc15ce4ce328af7f8e4e58404ac93dd2fba
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 12:42:52 2014 -0500

    staging all files

commit 6b3fdbbdb164ad8162ee8ff63d2c171205453721
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 11:51:13 2014 -0500

    run template

commit 3ac02148a342e596099d95796c614f5f75993466
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 11:49:20 2014 -0500

    add template to folders

commit 9ac37370da64c522511b8cdeba68f51109c3edf4
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 11:42:08 2014 -0500

    ignore SEMINAR.Rproj

commit e3c55166836d350943cdf23edb9885977c137dad
Author: Alan Arnholt <arnholtat@appstate.edu>
Date:   Thu Jan 9 11:37:26 2014 -0500

    First commit
```

