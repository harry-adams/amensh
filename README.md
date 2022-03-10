![logo (2)](https://user-images.githubusercontent.com/91059134/157690752-bac759a7-e25d-4a27-bf5e-47d6523557c3.png)
---
Amensh is a CLI tool to speed up the workflow of developers using a single commit to master workflow

 1. AMEND 
 2. REBASE 
 3. PUSH


## Installation

Run the following command to add it to your shell rc file e.g. bashrc, zshrc, fishrc

## Bash
```bash
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
```

## Zsh
```bash
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
```

Remember to refresh your rc file:
```bash
source .bashrc
```

## Usage

```bash
$ amensh <base branch>
```
### e.g.

```bash
$ amensh master
```
 - Add all untracked files, 
 - Amend them into the current commit, 
 - Rebase any changes on the master branch onto the commit, 
 - Push it

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
