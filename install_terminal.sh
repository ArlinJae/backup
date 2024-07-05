echo "[install_terminal.sh] Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "[install_terminal.sh] Exporting ZSH config"
cp .zshrc ~/.zshrc

