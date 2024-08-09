sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

if [[ $? -eq 0 ]]; then
    echo "installed oh my zsh"
else
    echo "failed to install zsh"
    exit 1
fi

export ZSH="$HOME/.oh-my-zsh"

brew install zsh-history-substring-search
if [[ $? -eq 0 ]]; then
    echo "installed oh my zsh"
else
    echo "failed to install zsh"
    exit 1
fi

brew install zsh-syntax-highlighting
if [[ $? -eq 0 ]]; then
    echo "installed zsh-syntax-highlighting"
else
    echo "failed to install zsh-syntax-highlighting"
    exit 1
fi

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
if [[ $? -eq 0 ]]; then
    echo "installed zsh-autosuggestions"
else
    echo "failed to install zsh-autosuggestions"
    exit 1
fi

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
if [[ $? -eq 0 ]]; then
    echo "installed zsh-syntax-highlighting"
els
    echo "failed to install zsh-syntax-highlighting"
    exit 1
fi

pip install ranger-fm --user
if [[ $? -eq 0 ]]; then
    echo "installed ranger file manager"
else
    echo "failed to install ranger file manager"
    exit 1
fi