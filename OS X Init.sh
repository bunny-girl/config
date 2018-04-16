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

# read -p "Need to config your vim? y/n " vim
# case $vim in
#   "y")
#     # echo "" > ~/.vimrc
#     ;;
#   "n")
#     echo "Vim config cancelled"
#     ;;
# esac
# echo ""

read -p "Need to download sublime? y/n " vim
case $vim in
  "y")
    sublime_url=$(curl http://www.sublimetext.com/3|grep https:\/\/.+.dmg -E -o)
    curl -O "$sublime_url"
    ;;
  "n")
    echo "Sublime Download cancelled"
    ;;
esac
echo ""
