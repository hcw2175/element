#!/bin/sh

scriptPath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${scriptPath}

// 拉取element源仓库的更新
git fetch upstream

// 合并源仓库更新到本地主分支
git checkout master
git merge upstream/master

// 推送到fork分支
git push origin master