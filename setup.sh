echo "this script has been done for replit or colab setup requieriments for SillyTavern"
echo "the script has been created by NoneCode from backdoor dev please gave me a star in the repo"
echo "this script will install nodejs and npm like 21 or 22 version"
echo "please wait and be patient"
# the info for how install nodejs and npm recent versions is from this post: https://github.com/nodesource/distributions
dpkg --configure -a
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=21 && echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt-get update
sudo apt-get install nodejs -y
echo "nodejs installed"
echo "setup finished please run server.sh"
echo "if you want to update you can update manually the version or update with the file update.sh its in beta its in tests but if you want to use it use it will save configs and character all the important and will backup it will download new version and willoverwrite existing files later will write again the backup files"
