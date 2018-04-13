read -p "Install Homebrew? y/n\n" hb
case $hb in
  "y")
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "Homebrew installed."
    ;;
  "n")
    echo "Homebrew installation cancelled."
    ;;
esac

read -p "Install NodeJS? y/n\n" n
case $n in
  "y")
    brew install nodejs
    echo "NodeJS installed"
    ;;
  "n")
    echo "NodeJS installation cancelled."
    ;;
esac

read -p "Download Oceanic Theme for OSX Terminal\nFrom https://github.com/robinbentley/oceanic-next-macos-terminal ? y/n\n" ocean
case $ocean in
  "y")
    cd ~/Download/
    mkdir _tmp
    git clone git@github.com:robinbentley/oceanic-next-macos-terminal.git
    echo "Cloned. Plz import into Preference of Terminal"
    ;;
  "n")
    echo "Download cancelled."
    ;;
esac

read -p "Generate ssh keys? y/n\n" sshkey
case $sshkey in
  "y")
    ssh-keygen -t rsa 
    ;;
  "n")
    echo "SSH key generation cancelled"
    ;;
esac
