# Set up basic webdev environment in Fedora Linux
# Includes pipenv, rbenv, and nvm. Node and Ruby must be installed after running this script.

# Basic development tools
sudo dnf groupinstall "Development Tools" "Development Libraries"
sudo dnf install zsh wget git util-linux-user neovim python3-neovim the_silver_searcher fzf

# Pyenv for Python version management
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

# Pipenv for python env management
sudo pip install pipenv

# Install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Oh my zsh for better command line
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

# NVM for managing versions of Node and npm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash

# custom .zshrc; switch default shell to zsh if it isn't already
cp ./.zshrc ~/.zshrc
chsh -s /usr/bin/zsh || true

# Install rbenv and ruby-build
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
~/.rbenv/bin/rbenv init
mkdir -p ~/.rbenv/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

# Set github user
git config --global --add user.name Louis-C-Leon
git config --global --add user.email louistheleon@gmail.com
git config --global --add core.editor nvim

# Text editor config
cp -r ./nvim ~/.config/nvim
cp -r ./coc ~/.config/coc
cp ./.prettierrc ~/.prettierrc

echo "
------------

Success! 
Todos:
- Install the latest versions of Node and Ruby when needed.You need to manually install Ruby and Node using rbenv and nvm.
- Install Nvim extensions
- Configure Github and AWS credentials for CLI

------------
"
