Maureen 
========================================================

## Chapter 3

### What's It About?

1. Using R: The Basics
  * What is covered:
    * Objects and assignments
    * Component selection
    * Functions and commands
    * Agurments
    * Workspace and history
    * Packages
  * Objects:
    * Various types of objects
    * Numeric objects 
    * Character objects
      * Characters need " " or ' '
  * Vectors:
    * Fundemental data type in R
    * String of data or characters
    * Use c() concatenate
    * Creates "Table" type thing
    * Can be turned into a data.frame
    * row.names 
  * Component Selection
    * attach
    * with
    * $ 
    * head() shoes beginning numbers
    * data.frame[] picks rows and colomns 
  * Function and Commands
    * mean
    * Apply various commands and functions to vectors and data.frames
  * Arguments
    * Determining which variable you are applying the argument or function to
  * Workspace and History
    * All objects become part of your workspace
    * save.image allows you to save the entire workspace in text?
    * save(data, file = "name")
  * Packages
    * User-created packages
    * Library command loads packages
    * :: uses a command from a specific package
2. RStudio
  * Start-up window
    * 3 areas
      * Console, Files/plots/packages/help, Workspace/History
  * Knitr
    * Ties together presentation of results
    * Various file extensions
      * .Rnw .Rmd .Rmarkdown .Rtex .tex
    * Code chunks
      * Allows you to put Rcode into the document
      * '''{}  << >>=
      * Labels
    * Global chunk options
      * Allows you to set options for every code chunk
    * Hooks
      * Not very well covered 
      * Two types chunk hooks and output hooks
  * Knitr and RStudio together
    * Compliling notebooks 
    * Knit an HTML from Markdown
    * Folding Chunks
    * Knitr is a package in R
    * Knit command only produces a Rmd file not an HTML

#### Chapter Summary

Understanding R code chunks, how knitr interacts with R and RStudio.  Learning basic commands, and understanding the various types of documents.
