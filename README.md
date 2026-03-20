# 1. Create a project folder and go inside
mkdir aws-project-1
cd aws-project-1

# 2. Create your files (Copy-paste your script and the README I gave you)
nano monitor_web.sh
nano README.md

# 3. Initialize the Git "brain" in this folder
git init

# 4. Add your files to the staging area
git add .

# 5. Commit the changes
git commit -m "First commit: Added self-healing script and documentation"

# 6. Link your local folder to GitHub
# (Copy the URL from the GitHub page you just created)
git remote add origin https://github.com/YOUR_USERNAME/aws-self-healing-server.git

# 7. Push your code to the internet
git branch -M main
git push -u origin main
