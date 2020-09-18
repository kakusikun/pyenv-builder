echo '------------------ Basic Setup'
sudo apt-get update
sudo apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git python-opencv libopencv-dev libboost-thread-dev

echo '------------------ Clone pyenv virtualenv'
git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv
git clone https://github.com/pyenv/pyenv-virtualenv.git $HOME/.pyenv/plugins/pyenv-virtualenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $HOME/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> $HOME/.bash_profile
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> $HOME/.bash_profile
echo 'eval "$(pyenv virtualenv-init -)"' >> $HOME/.bash_profile

source ~/.bash_profile
pyenv install 3.7.1
pyenv virtualenv 3.7.1 py371
pyenv activate py371
pip install --upgrade pip
pip install torch flask Pillow MarkupSafe numpy opencv-python easydict PyYAML