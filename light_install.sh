echo '------------------ Basic Setup'
sudo apt-get update
sudo apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git \
python-opencv libopencv-dev libboost-thread-dev python3-pip

echo '------------------ Setup pyenv virtualenv'
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $HOME/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> $HOME/.bash_profile
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> $HOME/.bash_profile
echo 'eval "$(pyenv virtualenv-init -)"' >> $HOME/.bash_profile

echo 'Download pyenv'
echo 'https://drive.google.com/uc?export=download&confirm=nOPT&id=1Hk0Mj_ZdHwP41r5K-I4fkkUFF4KPetG3'