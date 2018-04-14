read -p "Install Homebrew? y/n " hb
case $hb in
  "y")
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "Homebrew installed."
    ;;
  "n")
    echo "Homebrew installation cancelled."
    ;;
esac
echo ""

read -p "Install NodeJS? y/n " n
case $n in
  "y")
    brew install nodejs
    echo "NodeJS installed"
    ;;
  "n")
    echo "NodeJS installation cancelled."
    ;;
esac
echo ""

read -p "Generate ssh keys? y/n " sshkey
case $sshkey in
  "y")
    ssh-keygen -t rsa 
    ;;
  "n")
    echo "SSH key generation cancelled"
    ;;
esac
echo ""
