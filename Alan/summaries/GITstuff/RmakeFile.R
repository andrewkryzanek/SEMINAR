# Set working directory
setwd("./Alan/summaries/GITstuff")

# Load packages
require(knitr)
require(markdown)

# Create .md, .html, and .pdf files
knit("GIT_LAB1.Rmd")
# Really do not need this one
# markdownToHTML('GIT_LAB1.md', 'GIT_LAB1.html', options=c("use_xhml"))
system("pandoc -s GIT_LAB1.html -o GIT_LAB1.pdf -V geometry:margin=1in")
