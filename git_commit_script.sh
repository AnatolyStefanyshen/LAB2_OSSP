if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <local_directory_path> <remote_repository_url>"
    exit 1
fi

local_directory="$1"
remote_repository="$2"

git init
git remote add origin git@github.com:AnatolyStefanyshen/LAB2_OSSP.git
git add .
git commit -m "Initial commit"
git push --set-upstream origin master
