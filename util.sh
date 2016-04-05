resetRepoWithOutput() {
  git reset 829ceefc19d4e19e5cfff808d362ae1a14180674
  git add .
  git commit --amend -m "Git Katas"
  git config push.default simple
  rm -rf src
  mkdir src
  echo "Hello world" > src/app.js
  git add ./src
  git commit --amend -m "Add app.js"
  git push -f
}

resetRepo() {
  echo "Resetting state"
  resetRepoWithOutput > /dev/null 2>&1
}

setupJohnnyWithOutput() {
  rm -rf .johnny
  mkdir .johnny
  cp -r .git .johnny
  cd .johnny
  git config user.name Johnny
  git config user.email johnny@who.com
  git config push.default simple
  git reset --hard
  cd ..
}

setupJohnny() {
  setupJohnnyWithOutput > /dev/null 2>&1
}

commitWithJohnnyWithOutput() {
  cd .johnny
  echo "$1" > "$2"
  git add .
  git commit -m "$3"
  git push
  cd ..
}

commitWithJohnny() {
  commitWithJohnnyWithOutput "$1" "$2" "$3"> /dev/null 2>&1
}

editFileWithOutput() {
  echo "$1" >> src/app.js
}

editFile() {
  editFileWithOutput "$1" > /dev/null 2>&1
}

commitChangeWithOutput() {
  editFile "$1"
  git commit -am "$2"
}

commitChange() {
  commitChangeWithOutput "$1" "$2" > /dev/null 2>&1
}

pushChangesWithOutput() {
  git push
}

pushChanges() {
  pushChangesWithOutput > /dev/null 2>&1
}

resetRepo
setupJohnny
