# Creates a new remote repo from the command line with arguments of repo name and a repo description
# You will need to create a new OAuth token from your GitHub user settings for this

# Example usage: `gitcreate   'new-remote-repo'   'Testing creation of a new repo from the command line'`

gitcreate () {
        curl -v -H "Authorization: token YOUR_NEW_TOKEN_HERE" https://api.github.com/user/repos -d "{\"name\": \"$1\", \"description\": \"$2\"}"
	cd ~/source && git clone https://github.com/YOUR_USERNAME_HERE/$1
}


# Later addition that clones one of my repos with just the repo name
cloneme () {
        git clone https://github.com/YOUR_USERNAME_HERE/$1
}
