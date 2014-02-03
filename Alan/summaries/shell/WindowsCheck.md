# Doing it with Windows

## Having fun --- or Not

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


Maybe a little more information. Note: `-al` lists details for hidden and 
unhiddn files and folders.


```sh
ls -al
```

```
total 32
drwx------+ 1 Alan mkpasswd     0 Feb  3 13:56 .
drwx------+ 1 Alan mkpasswd     0 Feb  3 13:14 ..
-rwx------  1 Alan mkpasswd  1139 Feb  3 13:50 WindowsCheck.Rmd
-rwx------  1 Alan mkpasswd 15189 Feb  3 13:56 WindowsCheck.html
-rwx------  1 Alan mkpasswd  1765 Feb  3 13:56 WindowsCheck.md
```

`touch` creates an empty file


```sh
touch NewFile
ls
```

```
NewFile
WindowsCheck.Rmd
WindowsCheck.html
WindowsCheck.md
```


```sh
rm NewFile
ls
```

```
WindowsCheck.Rmd
WindowsCheck.html
WindowsCheck.md
```


What time is it?


```bash
date
```

```
Mon Feb  3 14:03:03 EST 2014
```

