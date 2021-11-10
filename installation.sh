echo "This script is written by Sudip Ghimire <sudipghimire533@gmail.com>"
echo "Starting the installation project..."
echo "............................................"

echo "Upading package list..."
sudo apt update

echo "Installing required package....."
sudo apt install curl wget curl tar untar binutils git


echo "Setting the primordial root to current directory.."
echo "export PRIMORDIAL_ROOT=$PWD" >> ~/.bashrc

echo "Going to temporary directory"
cd /tmp

echo "Installing zola...."
export ZOLA_VERSION=v0.14.1
curl -L https://github.com/getzola/zola/releases/download/$ZOLA_VERSION/zola-$ZOLA_VERSION-x86_64-unknown-linux-gnu.tar.gz | tar xz
sudo mv zola /usr/local/bin/zola

echo "Installing nodejs...."
curl -fsSL https://deb.nodesource.com/setup_17.x | bash -
sudo apt install -y nodejs

echo "Updating npm..."
npm install -g npm@latest

echo "Installing required npm packages"
npm install -gD tailwindcss@latest postcss@latest autoprefixer@latest
npm install -gD netlify-cms-proxy-server

echo "Installation complete. You can now run ./start_server"
