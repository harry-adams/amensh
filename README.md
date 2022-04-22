![logo (2)](https://user-images.githubusercontent.com/91059134/157690752-bac759a7-e25d-4a27-bf5e-47d6523557c3.png)
---
Amensh is a CLI tool to speed up the workflow of developers using a single commit to master workflow

 1. AMEND 
 2. REBASE 
 3. PUSH


## Installation

grab the binary and place it in a location that your path has access to e.g.
```
curl https://github.com/harry-adams/amensh/raw/main/amensh >> $HOME/.local/bin/amensh
```
update the privileges
```
sudo chmod +x $HOME/.local/bin/amensh
```
## Usage

```bash
amensh <base branch>
```
### e.g.

```bash
amensh master
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
