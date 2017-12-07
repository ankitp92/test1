#!/bin/bash

set -e

if [ -z "${1}" ]
	then
		echo "No arguement supplied"
		exit 1
fi

echo "${1}"


jsonObj="[
		{
			\"name\":\"basetrade\",
			\"bucket\":\"dvc-artifactory\",
			\"key\":\"${1}\"
		}
]"



echo "${jsonObj}"

GRID_TEMP_DIR=~/gridTemp

if [ -d $GRID_TEMP_DIR ];
then
	rm -rf $GRID_TEMP_DIR
fi

mkdir $GRID_TEMP_DIR
git clone git@github.com:ankitp92/test2.git $GRID_TEMP_DIR
cd $GRID_TEMP_DIR
git checkout test2
echo "${jsonObj}" > README.md
git add .
git commit -m "Updating test2 version"
git push origin test2
commit_hash="$(git rev-parse HEAD)"
echo "${commit_hash}"
git checkout master
git cherry-pick "${commit_hash}"
git push origin master
rm -rf $GRID_TEMP_DIR
