# Make non-existent .ssh folder
mkdir -p ~/.ssh

# Add github key to known_hosts
ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts

# Go to /config folder or 
# Change this to your Home Assistant config folder if it is different
cd /config
# Add all files to the repository with respect to .gitignore rules
git config --global user.email "bkmccarty@gmail.com"
git config --global user.name "Brian McCarty"

git add .
# Commit changes with message with current date stamp
git commit -m "config files on `date +'%d-%m-%Y %H:%M:%S'`"
# Push changes towards GitHub
git push -u origin master