# Git Kata

## Prerequisites
- shell terminal
- git >= 1.7

## Instructions

- Fork this repo
- Clone it on your machine
- Run `./start` and follow the instructions

## How it works
Each kata exposes you to a different scenario. Johnny is an imaginary developer that makes changes to simulate real life collaboration. You'll occasionally run into commit conflicts with him.

If you run into trouble you can just re run the kata and it will reset the world.

## Command reference

### Kata 0 - Basics
```
git status
git remote -v
git branch
git branch -a
git log origin/master..HEAD
git diff origin/master..HEAD
```

### Kata 1 - Stashing
```
git stash
git pull --rebase
git stash pop
```

### Kata 2 - Pull
```
git commit -am "My change"
git pull
git commit -am "Merging conflicts"
git push
```

### Kata 3 - Pull with rebase
```
git commit -am "My change"
git pull --rebase
git add .
git rebase --continue
```

### Kata 4 - Squashing commits
```
git rebase -i origin/master
change:
1 pick 0a0113f commit 1
2 pick 9106e18 commit 2
3 pick ff13755 commit 3
4 pick 844674c commit 4
To:
1 r 0a0113f commit 1
2 f 9106e18 commit 2
3 f ff13755 commit 3
4 f 844674c commit 4
reenter the git message
```

### Kata 5 - Squashing commits with history overwrite
See Kata 4.
```
git rebase -i HEAD~4
git push -f
```

### Kata 6 - Interactive add
```
git add -p
```
