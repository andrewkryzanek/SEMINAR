Kayla Janos 
**_Chapter 5: Storing, Collaborating, Accessing Files, and Versioning_** 
========================================================

* Cloud storage is a good way to make your research available to others 
* Able to store your data somewhere other than your computer, so if something happens to you computer it is not all lost 
* Gives us the ability to work from anywhere, since our research can be accessed anywhere 
  * Makes it easier for collaborators to access work also 
* Saves the different versions in case we don't like a change that was previously made 
* We will learn about the different tools that come with Dropbox and Git/GitHub
  * Storage
  - Accessing
  - Collaboration
  - Version Control  
  
**5.1: Saving Data in Reproducible Formats**
- A key part of Reproducibility is that others can access the same data that you used in your research 
- Plain text files such as (.csv) and (.tsv) work well for small to medium sized data sets 
  - Any program that can open text files can open these 
  - write.Table command in R will help save to these types of files 
- R can save files in other formats with the help of the _foreign_ package  

**5.2: Storing your files in the cloud: Dropbox**
- Storage
  - When signing up for Dropbox, it will create a directory on your computer 
  - The amount of storage you recieve for free should be enough to store multiple text file-based research
- Accessing Data 
  - All files stored in a Dropbox will have a URL address so that it can be accessed from anywhere with a computer connection 
  - Source_data command in R can help to load. It is located in the repmis package 
  - Right click on files in Dropbox to get their URL number 
- Collaboration
  - You can not save files through the link
  - You have to upload them once they are saved 
  - Have to save files you want others to be able to modify in a non-public folder 
  - Easy to share non-public folders with others by sending them an email 
- Version Control
  - Every time you save a document a new version is created in Dropbox 
  - All you have to do is right click on the file, and select Previous versions 
  - It is possible to see a list of changes made to files by going to Events 
  - Free Dropbox accounts only hold previous versions for 30 days  
  
**5.3: Storing Your Files in the Cloud: GitHub**
- GitHub has better version control than Dropbox has 
  - Problem is, that it is harder to learn at first 
- Git does version control, GitHub does stores data
- Repositories were designed to host collaborators who were working on the same coded for computer programs  

_GitHub and Dropbox comparison_
- Storage and Access 
  - Dropbox only creates folders and stores them in the cloud 
  - GitHub makes the projects accessible on a project website
  - GitHub creates useful websites to help present results, not just replication of files 
- Collaboration
  - GitHub keeps track of who contributed to projects 
  - Has an area to discuss issues with collaborators 
  - Anyone can suggest changes to a public repository 
- Version Control 
  - You can see specific changes in GitHub
  - GitHub only creates new versions when you till it too
  - GitHub stores previous versions for as long as you need them 
  - GitHub works well with conflicts when more than one person is editing at a time  
  
-  Version Control with Git   
  - Git's _init_ command to set a directory as a repository  
  - Git's _add_ command to add a file to the repository 
  - Git's _commit_ command helps to track changes 
     - -a commits all changes 
  - Git's _status_ command helps to find details about the repository 
  - If you accidentially delete all your files, the .git folder will have them, and you will be able to recover them with the _checkout_ command 
  - You can add bookmarks to important commits, these are called _tags_ 
  - _branches_ in git, are alternative versions that you can merge to main documents later
- Having Git Ignore Files
  - _.gitignore_ will exclude files from version contol 
  - /* is a wildcard and stands for any character
  - Can help to ignore LaTeX biproduct files 
- Remote Storage on GitHub
  - You can create a new repository and download it using the git command, _clone_
  - Upload a existing repository to a new GitHub remote by _push_ 
  - Clone a new remote repository
     - You have to clone a new repository to your computer if you do not already have an version of it on your computer
  - Push an existing repository to a new Github repo
     -  You have to push your files from your computer to a new GitHub
     - _remote add_ command should do it 
     - **-u** is upstream tracking for repository branches 
-Pushing commits to a GitHub repo
  - Basically same as before you push to get it into the repository 
- Accessing GitHub
  - Downloading to R 
    - Describes how to direcetly download to R, but not useful since we are using R studio 
- Collaboration with GitHub
  - You can add people to a repository through the settings
-Syncing a Repository
  - It is a good idea to pull information before you sync it with GitHub when collaborating  
**RStudio and GitHub**
- Adds a Git tab beside your workspace and history tabs 
-Setting up GitHub with Projects 
  - To create a new project click on New Project, and follow the instructions 
     - Make sure to select create a git repository for this project 
  -
  
  
