#### add a file
> `git add /path/to/files`  // adds changes to the file into the staging area. Adds a new file if not already tracked

#### commit a file
> `git commit -a | /path/to files` // commits a file or files. -a means commit all staged file. Will add and commit in one operation

#### get the last committed version of the file (removing local changes)
> `git checkout /path/to/file` 

#### move a file
> `git mv file1.old file1.new` // moves `file1.old` to `file1.new`

>`git commit`

#### delete a file
> `git rm -- /path/to/files` or `git rm -r /path/to/folder`

> `git commit`

### Branching

>`git log --oneline --decorate` // displays a log of commits and the positions of local and remote branches

>`git branch -v` // lists the currently active branches locally. The default is `master` `-v` lists commit information

>`git branch -r`, `git branch -a` // lists the remote or all branches available

>`git branch <branch-name>` // creates a new branch from the current place in the repository

>`git checkout <branch-name>` // checks out the branch into your local repository

>`git branch -d <branch-name>` // deletes a branch

### Seeing differences between local and remote branch
>`git log origin/master..HEAD` will list the commits when local branch is ahead of origin by x number of commits

### Tracking branches

>`git checkout --track origin/<branch>` // creates a local branch to track the remote one and checks it out

>`git pull`, `git push`, `git fetch` will default to tracking branches

>`git fetch --all` // update remote information for all tracked branches

>`git branch -vv` // shows all tracking information

>`git push origin addgc:addgc` // pushes a locally created branch `addgc` to the server

>`git branch -u origin/addgc` // sets local branch `addgc` to start tracking remote branch `origin/addgc`

### Build version using tags
>`git tag -a v0.3` creates a tag called `v0.3` and launches your editor so you can add a descriptive message

>`git push origin v0.3` pushes the tag to the Github server so it is available to others

>`git tag` lists all the tags

>`git describe  --long` // gives the version information for current branch as `<last_tag>-<#commits_since_last_tag>-<commit hash>`

>`git describe  --long <branch>` // gives the version for that branch 

### Merging
>`git merge <branch-name>` // merges the contents of <branch-name> into the current branch

### Stashing
>`git stash` // saves all your uncommitted changes to a 'stash' and reverts your working directory to the last clean commit. As a result of this, you can now checkout other branches without worrying about losing your data. as an example, let's say you are working on branch `alpha` and are in the middle of some stuff and you are not ready to check those changes in.

>`git stash` // will save all your changes and revert your working directory to the last commit.

>`git checkout master` // checkout master without complaining becaue your WD is clean

>do some work, then `git commit -a`, `git push` // your changes in master have been committed and saved

>go back to `alpha`. `git checkout alpha`.

>recover the changes from the stash. `git stash pop`

>Bob's your uncle.

### Purging files from Git repo
To purge a file completely from the history of the git repo, use bfg

See full documentation at https://rtyley.github.io/bfg-repo-cleaner/
