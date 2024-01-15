alias gis="git status"
alias gpushom="git push origin master"
alias gpullom="git pull origin master"
alias gcm="git commit -m "
alias gcms="git commit -S -m"
alias glr="git rev-parse --verify HEAD"
alias gpso="git push origin"
alias gplo="git pull origin"
alias gpt="git push origin --tags"
alias gpd="git pull origin development"
alias gpsd="git push origin development"
alias gmd="git merge development"
alias gpl="git pull"
alias gb="git branch -a | cat"
alias gifm="git config core.fileMode false"
alias gfo="git fetch origin"
alias git_remove_executable="git update-index --chmod=-x "
alias git_add_executable="git update-index --chmod=+x "
alias git_fix_local_file_mode_on_windows="git config --local core.filemode false"
alias git_graph="git log --graph --decorate --pretty=oneline --abbrev-commit"
function g2d() {
    git checkout develop
    git pull origin develop
    git remote prune origin
    git branch -d $1
}
function g2m() {
    git checkout main
    git pull
    git remote prune origin
}
function gsw() {
    git checkout $1
    git pull origin $1
}
function git_remove_tag() {
    git tag -d $1 && git push origin --delete $1
}
function git_retag() {
    git tag -d $1 && git push origin --delete $1 && git tag $1 && git push origin --tags
}
function git_remove_all_tags() {
    git tag | xargs git push origin --delete && git tag | xargs git tag -d
}
alias git_credentials_cache_on="git config --global credential.helper cache && git config --global credential.helper 'cache --timeout=86400'"
alias git_credentials_cache_off="git config --global --unset credential.helper"
function git_branch_delete() {
    git fetch -p && for branch in $(git for-each-ref --format '%(refname) %(upstream:track)' refs/heads | awk '$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}'); do git branch -D $branch; done
}
function git_commit_show_affected_files() {
    git show --pretty="" --name-only $1
}
alias git_last_commit_show_affected_files="git log -n 1 --pretty=format:'%H' | cat | git show --pretty='' --name-only"
