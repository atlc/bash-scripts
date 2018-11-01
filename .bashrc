################################################################################
##### Self-defined functions

# Creates a new remote repo from the command line with arguments of repo name and (optionally) a repo description
# You will need to create a new OAuth token from your GitHub user settings for this.
# After creating the repo, it clones it and then cds you into that directory

# Example usage: `gitcreate 'new-remote-repo' 'Testing creation of a new repo from the command line'`
# Lazy usage: `gitcreate new-remote-repo`
gitcreate () {
    curl -v -H "Authorization: token YOUR_NEW_TOKEN_HERE" https://api.github.com/user/repos -d "{\"name\": \"$1\", \"description\": \"$2\"}"
    cloneme $1
}

# Lazily clones one of your repos and jumps to that dir with just `cloneme $repo-name`
cloneme () {
    cd ~/source && git clone git@github.com:YOUR_USERNAME_HERE/$1.git && cd $1
    # If using HTTPS instead of SSH, comment out the above line and uncomment the below
    # cd ~/source && git clone https://github.com/YOUR_USERNAME_HERE/$1 && cd $1
}

##### Self-defined functions
################################################################################

