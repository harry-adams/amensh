if [ "$SHELL" == "/bin/bash" ];
then
cat >> ~/.bashrc <<EOL
function amensh () {
  local branch_name=$1
  git add -A &&
  git commit --amend --no-edit &&
  git fetch --all &&
  git rebase origin/$branch_name &&
  git push -f
  }
EOL
source ~/.bashrc
fi
if [ "$SHELL" == "/bin/zsh" ];
then
cat >> ~/.zshrc <<EOL
function amensh () {
    local branch_name=$1
    git add -A &&
    git commit --amend --no-edit &&
    git fetch --all &&
    git rebase origin/$branch_name &&
    git push -f
}
EOL
source ~/.zshrc
fi
if [ "$SHELL" == "/bin/fish" ];
then
cat >> ~/.config/fish/config.fish <<EOL
function amensh () {
    local branch_name=$1
    git add -A &&
    git commit --amend --no-edit &&
    git fetch --all &&
    git rebase origin/$branch_name &&
    git push -f
}
EOL
source ~/.config/fish/config.fish
fi
echo "Successfully Installed"
