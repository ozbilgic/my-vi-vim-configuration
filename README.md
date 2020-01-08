# Installing Vim plugins (vim-plug)

`curl -fLo ~/.vim/autoload/plug.vim --create-dirs \`

`https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

- Text copy the /.vim/plugins.vim github file.
- Create a ~/.vim/plugins.vim file and paste text.

`nano ~/.vim/plugins.vim`

- Install ripgrep...

`sudo apt install ripgrep`

- Not in the repo? This do it.

`sudo add-apt-repository ppa:x4121/ripgrep`

`sudo apt update`

`sudo apt install ripgrep`

- Launch Vim and run :PlugInstall
- Text copy the .vimrc github file.
- Create a ~/.vimrc file and paste text.

`nano ~/.vimrc`

- Install gem rubocop for Syntastic.

`gem install rubocop`

- Now turn vim off and on again.
