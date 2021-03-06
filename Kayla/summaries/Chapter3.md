Kayla Janos
**_Chapter 3: Getting Started with R, RStudio, and knitr_**
========================================================
-  This chapter is to help people learn how to use R, RStudio, and knitr
- Experienced users should skip over the first section  

**3.1: Using R, this basics**
- R Console is what appears when you initially open R 
- The greater than sign (>) is where you can begin to write your code
  - To run your code all you have to do is hit the Enter or Return key  
  
_Objects_ 
- Objects are R language's nouns 
  - The objects are like vectors, data sets, etc... 
- When you hear the saying that R is object oriented, what it really means is that R is focused on doing things to objects 
- There is two kinds of objects, the first of which being numeric 
  - You can name objects almost anything as long as it doesnt have spaces an starts with a letter
- To put something in a object you use the assignment operator (<-) as shown below
   

```r
Number <- 10
```

- If you want to see what is stored under a specific name, you type the objects name
  - R is case sensitive so keep that in mind 

```r
Number
```

```
## [1] 10
```

- The ## you see above indicated that it is the output and not the code
- If you Would like to create an object with words all you have to do is include quotation marks around the text  
  - This is a character object 
- They type of object determines what can be done with it
  - You cant take the mean of a character object
- When you try to take the mean ## [1] NA is returned
  - NA means not applicable, or you can think of it as missing
- To find out a objects type use the class command  

_Vector and Data frame Objects_ 
- Data frames will be used throughout the book
  - First we will look at vectors which help to compile data frames 
- **Vectors** 
- They are ordered groups of numbers, and character strings 
- Data frames are basically multiple vectors of the same length
- Here is an example of how to create a numeric vector 

```r
NumericVector <- c(2, 3, 4)
```

- A character vector is done the same way, just remember to include the quoatation marks 

```r
CVect <- c("Test", "Quiz", "Book")
```

- In order to create a data frame that we can combine vectors you create using the cbind function

```r
StringNumObj <- cbind(NumericVector, CVect)
StringNumObj
```

```
##      NumericVector CVect 
## [1,] "2"           "Test"
## [2,] "3"           "Quiz"
## [3,] "4"           "Book"
```

- **Data Frames**
- To have an object with rows and columns of different data types, you need to create a data frame
- This can be done using the data.frame command in R 

```r
NewString <- data.frame(CVect, NumericVector)
NewString
```

```
##   CVect NumericVector
## 1  Test             2
## 2  Quiz             3
## 3  Book             4
```

-If you create a new object with the same name as a old object, the old object will be deleted
- To see just the names of your columns in a data frame the names() command will work
- To assign names to your rows you an use the following command 

```r
row.names(NewString) <- c("One", "Two", "Three")
NewString
```

```
##       CVect NumericVector
## One    Test             2
## Two    Quiz             3
## Three  Book             4
```

- **Component Selection**
- We can use the dollar sign, which is called the component selector
  - You can use the selector to create new objects with parts of other objects, as shown below 

```r
NewNum <- NewString$NumericVector
NewNum
```

```
## [1] 2 3 4
```

- ** Attach and With**
- The attach command in R attaches a data base to R's search path.
  - This make it avabliable to you without having to create the data set your self 
  - head() will let to see the first few values of a variable
- It is smart to detach() the data set once you are done using it so that R doesnt become confused 
- with is used essentially the same way
- **Subscripts**
- Subscripts are another way to select parts of objects 
  - Subscripts are denoted with the square brackets []
- To get R to find parts of an object you first put the row name/number followed by the position of the information you want in the square brackets 
- **Functions and Commands**
- Objects are the nouns of the R language and the functions and commands can be considered the verbs 
  - Things like mean() are commands 
- **Arguments** 
- Arguments modify what commands do 
- To find all teh arguments that a command can accept you can simply put a question mark in front of the command and run that line 
- Arguments are seperated by commas 
- You can stack arguments inside of other arguments 
- **The workspace and history**
- All objects you create become part of your workspace 
- You can use the ls command to list all the objects in your workspace 
  - You can also use the rm command to remove objects from the workspace 
- You should try to avoid having R automatically save your workspace
  - Instead you should have your work space in specific places 
- **Installing new packages**
- Commands are stored in packages 
-  To install commands that aren't part of the basic R commands you need to use the install.packages command 
  - When you try to download new packages you will be given a list of places to download from, you just need to find one closest to you  
  
**3.2: Using RStudio**
- RStudio is an enviroment that integrates everything from R.
- The default window 
  - When you initially open RStudio there should be three windowpanes 
  - The large one on the left is known as the console
    - This works the same way  as R does 
  - Workspace/History will be in the upper right hand corner
  - The lower right hand pane contians _Files/Plots/Packages/Help_ 
- The Source Pane 
  - Does not show up initially 
  - Whenever you create a new doucument the source code comes up  
  
**3.3: Using _knitr_: the Basics**
- Knitr ties together your presentation of results with the data you use to create it 
- Knitr process takes three steps 
  - First you create a knittable markup document 
  - Then you add you input 
  - Lastly you compile the document and it produces a PDF document presenting your results
-Code Chunks 
  - When you want to include R code in your presentation documents you place them in a code chunk
  - In RStudio there is a button you can click to add the chunk, and then you include your R code in the middle of the chunk
  - In each kind of document, the way code chunks appear are different
- Code Chunk Options 
  - You can label your chunks 
    - This is done in the chunk head 
  - They have the same rules as R command arguments 
  - All labels and code chunk must be on the same line 
  - The book has a number of different examples throughout it about code chunks 
- Global chunk options 
  - If we want a option to apply to  all the chunks in a document you can set global chunk options 
  - Global options help to ensure documents are formatted consistantly 
  - You create a new chunk at the start of a document, and make sure to include the option include=FALSE
    - Inside the code us opts_chunk$set() then you can set any option you want in these paranthesis 
    - This will be applied throughout the document 
- Knitr package options
  - Knitr package options can affect how the package itself runs
    - These are set the same way global options are 
- knitr and RStudio 
  - Most RStudio/knitr features are accessed in the source pane 
  - The source panes appearance changes depending on the type of file you have open 
  - Compiling R source code Notebooks 
    - You can use "Complie Notebook" in R for an quick well formatted account of the code that you ran 
    - It will produce a html file that will also include all of the code from a R source file as well as its out put 
    - In order to create a notebook from an open R source file simply click on hte Compile Notebook icon in the source panels top bar 
      - The compile button in a window should pop up 
 - R Markdown
  - R Markdown is similar to a R script but has a new toolbar at the top 
  - It gives you options to insert code chunks 
  - RStudio will properly highlight language syntax and the R code in your source pane 
  - It provides arrows that allow you to collaspe the R code so that it is still in the document but you dont see it while editing
  - When you are done you can chose to knit your presentation and it produces a PDF 
- R LaTeX 
  - LaTeX has a lot of similar options 
  - The biggest difference  is you chose to compile a PDF instead of knitting it 
  - There is also a format icon instead of the question mark which inserts LaTeX formatting commands into your document 
- **Knitr and R**
- knitr is a regular R package
  - You can knit documents straight from R or from RStudio 
- The only difference when doing it directly from R is that you use the knit command instead of the Complie PDF or knit HTML buttons 
- An example of the command you would use is:  
>knit2html(file = "Example.Rmd", output = "Example.html")
  
    



