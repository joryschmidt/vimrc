## Copy and paste these commands into the terminal

cd ~

git clone https://github.com/joryschmidt/vimrc

mv vimrc/vimrc ./.vimrc && mv vimrc/bash_aliases ./.bash_aliases && source ~/.bash_aliases

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/chriskempson/vim-tomorrow-theme.git

mv vim-tomorrow-theme/colors .vim/colors && rm -rf vim-tomorrow-theme
