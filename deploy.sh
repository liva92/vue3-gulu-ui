rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M master &&
git remote add origin git@github.com:liva92/gulu-ui-website.git &&
git push -f -u origin master &&
cd -
echo https://liva92.github.io/gulu-ui-website/
