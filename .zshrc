alias zshconfig="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"
alias boiler="git clone git@github.com:covalence-io/barebones-react-typescript-express"
alias basecamp="$(which electron) /home/andrew/source/basecamp-linux/build/basecamp-linux-x64/resources/app > /dev/null 2>&1 &!"
alias reload_shell=". ~/.zshrc"
alias chromehere="google-chrome $(pwd)"

function cloneme() {
        git -C ~/source clone "git@github.com:atlc/$1"
        cd ~/source/$1
}

function listme() {
        curl -s https://api.github.com/users/atlc/repos\?per_page\=100 | jq '.[]|.name'
}

function searchme() {
        listme | grep -i $1
}

function linkme() {
        curl -s https://api.github.com/users/atlc/repos\?per_page\=100 | jq '.[]|.html_url' | grep -i $1
}
