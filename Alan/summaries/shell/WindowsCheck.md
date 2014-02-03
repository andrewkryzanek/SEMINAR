# Doing it with Windows

OK....does **bash** work with windows?

First, check if the following works at the **R** prompt.


```r
Sys.which("bash")
```

```
                              bash 
"C:\\PROGRA~2\\Git\\bin\\bash.exe" 
```


Cool!  It looks like I am good to go.

Now we will print the working directory from **bash**.


```bash
pwd
```

```
/c/Users/Alan/repos/SEMINAR/Alan/summaries/shell
```


To see if **sh** will work, test to see if it is found on your system.  
I have **Rtools** installed on my system.  You may want to install [Rtools](http://cran.r-project.org/bin/windows/Rtools/) if you have not already.


```r
Sys.which("sh")
```

```
                          sh 
"c:\\R\\Rtools\\bin\\sh.exe" 
```


Hot dog!  This is working.  Issue some commands to see what is in the working directory.


```sh
ls -a
```

```
.
..
WindowsCheck.Rmd
WindowsCheck.html
WindowsCheck.md
```


Maybe a little more information.


```sh
ls -al
```

```
total 32
drwx------+ 1 Alan mkpasswd     0 Feb  3 13:16 .
drwx------+ 1 Alan mkpasswd     0 Feb  3 13:14 ..
-rwx------  1 Alan mkpasswd   820 Feb  3 13:22 WindowsCheck.Rmd
-rwx------  1 Alan mkpasswd 14138 Feb  3 13:16 WindowsCheck.html
-rwx------  1 Alan mkpasswd   924 Feb  3 13:16 WindowsCheck.md
```

