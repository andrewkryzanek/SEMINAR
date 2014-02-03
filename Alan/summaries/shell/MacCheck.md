# Doing it with OSX

## Having fun --- or Not

OK....does **bash** work with OSX?

First, check if the following works at the **R** prompt.


```r
Sys.which("bash")
```

```
       bash 
"/bin/bash" 
```


Cool!  It looks like I am good to go.

Now we will print the working directory from **bash**.


```bash
pwd
```

```
/Users/alan/git_repositories/SEMINAR/Alan/summaries/shell
```


To see if **sh** will work, test to see if it is found on your system.  
I have **xcode** installed on my system.  You may want to install [xcode](https://developer.apple.com/xcode/) if you have not already.


```r
Sys.which("sh")
```

```
       sh 
"/bin/sh" 
```


Hot dog!  This is working.  Issue some commands to see what is in the working directory.


```sh
ls -a
```

```
.
..
MacCheck.Rmd
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
total 56
drwxr-xr-x  6 alan  staff    204 Feb  3 14:19 .
drwxr-xr-x  8 alan  staff    272 Feb  3 14:15 ..
-rw-r--r--  1 alan  staff   1064 Feb  3 14:21 MacCheck.Rmd
-rw-r--r--  1 alan  staff   1085 Feb  3 14:15 WindowsCheck.Rmd
-rw-r--r--  1 alan  staff  15189 Feb  3 14:15 WindowsCheck.html
-rw-r--r--  1 alan  staff   1646 Feb  3 14:15 WindowsCheck.md
```

`touch` creates an empty file


```sh
touch NewFile
ls
```

```
MacCheck.Rmd
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
MacCheck.Rmd
WindowsCheck.Rmd
WindowsCheck.html
WindowsCheck.md
```


What time is it?


```bash
date
```

```
Mon Feb  3 14:21:13 EST 2014
```

