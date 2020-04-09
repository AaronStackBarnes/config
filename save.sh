echo "$SHELL"

git add -A
git commit -am "update"
git push 

cp ~/websites/config/zshrc ~/.zshrc 
cp ~/websites/config/vimrc ~/.vimrc
echo "vimrc"
